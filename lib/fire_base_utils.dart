import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:todo/model/task.dart';

void addTaskToFireStore(Task task){
  var typedCollection=FirebaseFirestore.instance.namedQueryWithConverterGet(name, fromFirestore: fromFirestore, toFirestore: toFirestore);
}