# Teste Grupo Boticário,

 Neste teste eu apliquei o atomic design algo que estavamos iniciando na última empresa
 que trabalhei, falando rápido, tenho em minha pasta ui as  pastas atom, molecule, organism, page, tamplete, root, 
 themes e validators. 
 
 No atomo eu crio o que necessito como images, icones, textos etc.. tenho duas pastas a de behavior e render
 onde render é para RENDERIZAR ohhhhh e behavior são os atomos, (comportamentos, estilos) isso se repete para 
 molécula, já no organismo é onde A VIDA ACONTECE, tenho organismos de formiluarios, cards (listas).
 Em page eu uso os templates que já estão prontos e  começo a junção de tudo isso, onde posso usar molecule, atoms, e organismos, 
 criei o root com a intentção de redirecionar nada de mais, e neste projeto resolvi gerencia o estado 
 com o valueNotification, não vi a necessidade de utilizar um gerenciador de estado, estamos falando do flutter 
 e por se tratar de INUMERAS mudanças QUANTO MENOS dependecias MELHOR.
 
 
 

<img src="https://miro.medium.com/max/2625/1*V5oi-JrH4RlEQuYdVrQXig.png" width="648">
# Atomic Design

Mas o que é o atomic design?
É uma metodologia que foi desenvolvida por Brand Frost, que cobre tudo que é necessario para criar e manter sistemas de design eficazes.

```

O Atomic Design detalha tudo o que é necessário para criar e manter sistemas de design robustos,
permitindo que sua organização implemente UIs de maior qualidade e consistentes com mais rapidez
do que nunca. Este livro apresenta uma metodologia para pensar em nossas IUs como hierarquias ponderadas,
discute as qualidades de guias de estilo eficazes e apresenta técnicas para transformar
o fluxo de trabalho de design e desenvolvimento de sua equipe.

Fonte:
https://bradfrost.com/

```

Os cinco estágios do Atomic Design são:
 - átomos, 
 - moléculas, 
 - organismos,
 - modelos 
 - paginas.
 
 Os átomos são componentes basicos. ( NÃO complique esta parte ), e devem ser mantidos como basicos
 trazendo para o flutter os átomos são WIDGETS:
  EX: Text, Input, Image, Icon 
 
 <img src="https://raw.githubusercontent.com/paulosoujava/DesignAtomic/main/images/moleculas.png" width="648">
 
  Moléculas é a junção de dois ou mais átomos, ou seja, um grupo relativamente simples de elementos da interface que funcionam juntos como uma unidade.
  EX:  Button (button + text), lembra do que falei acima, não complique trazendo o botão para o átomo, até por que um botão SEMPRE terá um,
  icone, texto, algo deste tipo
 
 <img src="https://raw.githubusercontent.com/paulosoujava/DesignAtomic/main/images/organismo.png" width="648">
 
 Organismo aqui já entra um pouquinho, mas só um poquinho de complexidade, organismos são componentes de interface relativamente complexos compostos por grupos de moléculas
 e/ou  átomos e/ou outros organismos
 EX: Um conjunto de inputs -> para virar um formulário de login, registro, profile
 
 <img src="https://raw.githubusercontent.com/paulosoujava/DesignAtomic/main/images/template.png" width="648">
 
 Template como o nome diz, é um modelo de como exibir, neste projeto por exemplo eu criei um template para formulários, e chamos meus organismos
 de formulários para serem exibidos nele.
 
 
 <img src="https://raw.githubusercontent.com/paulosoujava/DesignAtomic/main/images/page.png" width="648">
 
 chegamos as Páginas, onde os templates seram acionados e a mágica toda acontece.
 
 Fonte:
 https://vidadeproduto.com.br/atomic-design/#1_Atomos
 
 
 # Fluxo by Paulo 
 <img src="https://raw.githubusercontent.com/paulosoujava/DesignAtomic/main/images/fluxo.png" width="648">
 
 ## Fluxo Atomico
 Um atom só pode conter ele mesmo e seus estados, exemplo um atom de texto pode ter seus estados tais como TITELE, SUBTITLE, H1 H2, (tamanhos de fontes, tipografia etc..)
 
 Uma Molécula pode conter atomos, e ela mesmo, sim moléculas, você pode aplicar estados também na molécula, expemplo, um botão [Disabilitado, habilitado suas cores, mais
 o atom de texto [H1] por exemplo]
 
 Um organismo pode ter um atom, molécula e ele mesmo, !! CUIDADO !! você pode estar criando complexidade desnecessária, vai depender de sua equipe, para colocar ou não 
 estados aqui, exemplo, LOADING
 
 Um Template pode conter Atom, Molécula e Organismo, !! NÃO COLOQUE TEMPLATE DENTRO DE TEMPLATE !!
 PAGE usam os TEMPLATES E SOMENTE OS TEMPLATES
 
 ## IMPORTANTE
 Apesar de os Templates poder ter átomos, moléculas e organismos, e até mesmo templates, que dita isso é você,
 neste curso, resstringimos as coisas, Page só pode RENDERIZAR templates, templates só podem RENDERIZAR organismos,
 organismos, pode conter a si mesmo, moléculas e atoms, moléculas pode ter a sim mesmo e atoms, atomos só atoms, definimos também 
 os estados e comportamentos nos Átomos e Moléculas!!
 
 <img src="https://raw.githubusercontent.com/paulosoujava/DesignAtomic/main/images/fluxo_atomic.png" width="648">
 
 
 
 
 Ah link para os design pattern em dart:
 https://github.com/paulosoujava/patterns_in_dart