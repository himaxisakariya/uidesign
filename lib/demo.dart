Widget build(BuildContext context) {
  return Scaffold(
      appBar: new MyAppBar(title: Text("My Profile")

      ),
      drawer:drawer(),
      body:
      SingleChildScrollView(
          child:Stack(children: <Widget>[
            Container(

                width: MediaQuery.of(context).size.width,
                height: 150,
                color: Colors.blue[500],
                child:  Align(
                    alignment:Alignment(-1.4,4.0),
                    child:Container(

                      //margin: EdgeInsets.all(20),
                      width: 400,
                      height: 125,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          image: NetworkImage('https://patientcaremedical.com/wp-content/uploads/2018/04/male-catheters.jpg'),

                        ),
                      ),
                    ))),


          ])));
}
}