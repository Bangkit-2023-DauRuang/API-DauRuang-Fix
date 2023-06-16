# DauRuang Application

DauRuang (Ruang Daur Ulang Menghasilkan Uang) We chose this name of "DauRuang" because first, the word "Daur" is taken from recycling or which means according to KBBI, namely the activity or reprocessing of materials that have been used. This is in accordance with the project we want to develop, namely recycling materials or waste, ranging from plastic to used cooking oil. Then, the word "Uang" is taken from the income generated from the collection of used waste itself. Also, in the title of our project there we also emphasize the word "R" in "DauRuang" because "Ruang" itself means a place or place for people who care about the sustainability of the environment to collect leftovers to be collected at the nearest waste collectors centers.

# CLOUD COMPUTING Documentation
## Method GET
- GET all orders data
- Url: https://.../order/orders

```json
{
    "message": "List semua data yang masuk",
    "data": [
        {
            "id": "Integer",
            "username": "String",
            "email": "String",
            "jenis_sampah": "String",
            "hargaPerKg": "Integer",
            "berat_sampah": "Float",
            "points": "Integer",
            "lokasi_pengepul": "String",
            "lokasi_user": "String",
            "catatan": "String",
            "status_pemesanan": "String",
            "createdAt": "Date",
            "updatedAt": "Date"
        }
    ]
}
```

- GET a list of data by id
- Url: https://.../order/orders/:id

```json
{
    "data":{
        "id": "Integer",
        "username": "String",
        "email": "String",
        "jenis_sampah": "String",
        "hargaPerKg": "Integer",
        "berat_sampah": "Float",
        "points": "Integer",
        "lokasi_pengepul": "String",
        "lokasi_user": "String",
        "catatan": "String",
        "status_pemesanan": "String",
        "createdAt": "Date",
        "updatedAt": "Date"
    }
}
```

- GET a list of data by email
- Url: https://.../order/orders/:email

```json
{
    "data":{
        "id": "Integer",
        "username": "String",
        "email": "String",
        "jenis_sampah": "String",
        "hargaPerKg": "Integer",
        "berat_sampah": "Float",
        "points": "Integer",
        "lokasi_pengepul": "String",
        "lokasi_user": "String",
        "catatan": "String",
        "status_pemesanan": "String",
        "createdAt": "Date",
        "updatedAt": "Date"
    }
}
```

## Method POST
- create a new order data
- Url: https://.../order/orders

```json
{
    "message": "String",
    "data":{
        "status_pemesanan": "String",
        "id": "Integer",
        "username": "String",
        "email": "String",
        "jenis_sampah": "String",
        "hargaPerKg": "Integer",
        "berat_sampah": "Float",
        "points": "Integer",
        "lokasi_pengepul": "String",
        "lokasi_user": "String",
        "catatan": "String",
        "updatedAt": "Date"
        "createdAt": "Date",
    }
}
```

## Method PUT
- update order data by id
- Url: https://.../order/orders/:id

```json
{
    "message": "String",
    "data":{
        "id": "Integer",
        "username": "String",
        "email": "String",
        "jenis_sampah": "String",
        "hargaPerKg": "Integer",
        "berat_sampah": "Float",
        "points": "Integer",
        "lokasi_pengepul": "String",
        "lokasi_user": "String",
        "catatan": "String",
        "status_pemesanan": "String",
        "createdAt": "Date",
        "updatedAt": "Date"
    }
}
```

## Method DELETE
- delete order data by id
- Url: https://.../order/orders/:id

```json
{
    "message": "String"
}
```

### Our Team Members :
- Brian Wijaya (M355DSX1541@bangkit.academy)
- Ahmad Miftahul Huda (M038DSX1807@bangkit.academy)
- Damayanti Dwi Astuti (M169DSY0171@bangkit.academy)
- Rahmawati Setyorini (C172DSY2207@bangkit.academy)
- Regina Irene Putri Sharon (C172DSY3155@bangkit.academy)
- David Nasrulloh (A366DKX4797@bangkit.academy)

This is an API for CRUD orders for users to be able to sell used goods such as paper, cardboard, organic, used cooking oil, which later users will get rewards in the form of points which can be exchanged for shopping vouchers, etc. Also users can earn money for successfully selling used goods in this DauRuang application. This API is build with NodeJS with ExpressJs Framework, XAMPP, and POSTMAN
