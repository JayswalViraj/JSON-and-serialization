class JsonModel{

   late final name;
   late final mob;
   late final  branch;


   JsonModel({this.name, this.mob, this.branch});

   JsonModel.fromMap(Map<String,dynamic> map){
     this.name = map["name"];
     this.mob = map["mob"];
     this.branch= map["branch"];

   }

   Map<String,dynamic> toMap(){
     return {
       "name":name,
       "mob": mob,
       "branch": branch,
     };

   }



}