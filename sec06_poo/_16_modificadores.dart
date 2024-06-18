import '../extras/tools.dart';

/**
 * MODIFICADORES
 * 
 * Con la versión 3 de dart se incluyeron una serie de modificadores
 * de clases.
 * 
 * 1. base class
 * Una base class no puede ser implementada o herada en principio. A
 * diferencia de abstract, si se puede instanciar. Además una base
 * class puede heredarse siempre y cuando la clase que extienda sea
 * sealed, base o final.  
 * 
 * 2.interface class
 * Las interface class pueden ser heredadas e implementadas
 * dentro del mismo fichero, fuera del fichero podrán implementarse
 * pero no heredarse.
 * 
 * Una interface class también puede instanciarse.
 * 
 * final class
 * Pueden instanciarse e implementarse pero no pueden extenderse.
 * 
 * sealed class
 */
void main() {
  // run examples
  baseClassExample();
  interfaceClassExample();
  finalClassExample();
  sealedClassExample();

  // end message
  systemPause();
}

void baseClassExample() {
  // instanciamos clase base
  final a = BaseClass();
  print(a);
}

void interfaceClassExample() {}

void finalClassExample() {}

void sealedClassExample() {}

// -------------------------------
base class BaseClass {
  @override
  String toString() {
    return 'Saludos desde instncia de base class: $this';
  }
}

interface class InterfaceClass {}

class B extends InterfaceClass {}

class C implements InterfaceClass {}
