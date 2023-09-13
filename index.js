import express from 'express';
import knex from 'knex';
import cors from 'cors';


const port = 3001;
const app = express();



app.use(express.json(), cors());


// Create DB from Postgre using command prompt psql -U postgres
// Go into the particular db using \c t3db  and then \dt

// Routes (Using postman to test backend)


const PGdatabase = knex({
    client: 'pg',
    connection: {
      host : '127.0.0.1',
      port : 5432,
      user : 'postgres',
      password : 'Aa24584223',
      database : 't3_circularmaterial_inventory'
    }
});


// PGdatabase('doors')
// .columnInfo()
// .then((columns)=>{
//     console.log(Object.keys(columns))
// })
// .catch(err =>console.log(err))



// app.post('/auth', (req, res)=>{
//     const {email, password} = req.body;
//     PGdatabase.transaction(trx=>{
//         trx.insert({
//             email:email,
//             password:password
//         })
//         .into('login')
//         .returning('email')
//         .then(loginEmail=>{
//             trx('users')
//             .returning('*')
//         })
//         .catch(err => res.status(400).json('Unable to authenticate'))
//     });
// });


// Create Routes
// app.post("/upload_material", async(req, res)=>{
//     try{
//         console.log(req.body);
//         console.log(req.body.material_type);
//         res.json({message:'Material Information Received!'})
//     }
//     catch(err){
//         console.log(err.message)
//     }
// });

app.post("/upload_material", async (req,res)=>{
    try{
        const{material_type,id,  ...materialInfo} = req.body;


        await PGdatabase(material_type)
        .columnInfo()
        .then(columns => console.log(Object.keys(columns).sort()))
        .then(()=>console.log(`${material_type} information stored to Database`));
        
        const insertion = await PGdatabase(material_type)
        .insert(materialInfo)
        .returning('*');



        res.json({message:'Material Information Received',
                material_data: insertion })
    }
    catch(err){
        console.log(err.message)
    }
});


// Store the information into PostGres

app.listen(port, ()=>{
    console.log(`Server is on ${port}`)
});