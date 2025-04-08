import objetos.*
import personas.*

object bolichito {
  var objetoDelMostrador = pelota
  var objetoDeLaVidriera = remera

  method setObjetoDelMostrador(unObjeto) {
    objetoDelMostrador = unObjeto
  }

  method setObjetoDeLaVidriera(unObjeto) {
    objetoDeLaVidriera = unObjeto
  }

  method esBrillante() {
    return objetoDeLaVidriera.material().esBrillante() &&
            objetoDelMostrador.material().esBrillante()
  }

  method esMonocromatico() {
      return objetoDeLaVidriera.color() == 
             objetoDelMostrador.color()
    }

  method estaEquilibrado() {
    return objetoDelMostrador.peso() > objetoDeLaVidriera.peso()
  }

  method tieneObjetoDelColor(unColor) {
    return( objetoDeLaVidriera.color() == unColor ) ||
            objetoDelMostrador.color() == unColor
  }
  
  method sePuedeMejorar(){
    //return !bolichito.estaEquilibrado() || bolichito.esMonocromatico() CUANDO HACEMOS REFERENCIA DEL MISMO OBJETO DENTRO DEL OBJETO ES MEJOR USAR SELF
    return !self.estaEquilibrado() || self.esMonocromatico()
  }

  method puedeOfrecerAlgoA(unaPersona) {
    return  unaPersona.leGusta(objetoDeLaVidriera) ||
            unaPersona.leGusta(objetoDelMostrador)
  }

}