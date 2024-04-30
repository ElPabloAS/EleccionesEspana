<?xml version="1.0" encoding="utf-8"?>
<!DOCTYPE xsl:stylesheet  [
<!ENTITY nbsp   "&#160;">
<!ENTITY copy   "&#169;">
<!ENTITY reg    "&#174;">
<!ENTITY trade  "&#8482;">
<!ENTITY mdash  "&#8212;">
<!ENTITY ldquo  "&#8220;">
<!ENTITY rdquo  "&#8221;"> 
<!ENTITY pound  "&#163;">
<!ENTITY yen    "&#165;">
<!ENTITY euro   "&#8364;">
]>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html" encoding="utf-8" doctype-public="-//W3C//DTD XHTML 1.0 Transitional//EN" doctype-system="http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd"/>
    <xsl:template match="/">
        
        
        <html lang="en">
            <head>
                <title>Title</title>
                <!-- Required meta tags -->
                <meta charset="utf-8" />
                <meta
                    name="viewport"
                    content="width=device-width, initial-scale=1, shrink-to-fit=no"
                    />
                
                <!-- Bootstrap CSS v5.2.1 -->
                <link
                    href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
                    rel="stylesheet"
                    integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN"
                    crossorigin="anonymous"
                    />
                <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"/>
            </head>
            
            <body>
                <header>
                    <nav
                        class="navbar navbar-expand-sm "
                        >
                        <div class="container">
                            <a class="navbar-brand" href="#"><img src="img/logoelecciones.png" alt="" width="200px"/></a>
                            <div class="collapse navbar-collapse" id="collapsibleNavId">
                                <ul class="navbar-nav mx-auto mt-2 mt-lg-0">
                                    <div class="h3" style="color: #002850;">Elecciones Autonómicas Castilla la Mancha 2023</div>
                                </ul>
                                
                            </div>
                            <a href=""><img src="img/logoclm.png" alt="" width="200px"/></a>
                        </div>
                    </nav>
                    
                </header>
                <main>
                    <section class="container-flex ms-2 me-2">
                        <div class="text-center rounded-1 p-1 mb-3" style="background-color: #0B294D;">
                            <div class="text-light h4">Participacion</div>
                        </div>
                        <div class="row m-0">
                            <div class="col-lg-3 col-6 mb-3">
                                <div class="card border-danger">
                                    <div class="card-body text-center">
                                        <h4 class="card-title">Contabilizados</h4>
                                        <p class="card-text"> <xsl:value-of select="elecciones/votos/contabilizados/@numero"/> - <xsl:value-of select="elecciones/votos/contabilizados/porcentaje"/></p>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-3 col-6 mb-3">
                                <div class="card border-danger">
                                    <div class="card-body text-center">
                                        <h4 class="card-title">Abetencion</h4>
                                        <p class="card-text"> <xsl:value-of select="elecciones/votos/abstenciones/@numero"/> - <xsl:value-of select="elecciones/votos/abstenciones/porcentaje"/> </p>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-3 col-6 mb-3">
                                <div class="card border-danger">
                                    <div class="card-body text-center">
                                        <h4 class="card-title">Nulos</h4>
                                        <p class="card-text"> <xsl:value-of select="elecciones/votos/nulos/@numero"/> - <xsl:value-of select="elecciones/votos/nulos/porcentaje"/> </p>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-3 col-6 mb-3">
                                <div class="card border-danger">
                                    <div class="card-body text-center">
                                        <h4 class="card-title">Blancos</h4>
                                        <p class="card-text"> <xsl:value-of select="elecciones/votos/blancos/@numero"/> - <xsl:value-of select="elecciones/votos/blancos/porcentaje"/> </p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </section>
                    <section class="container-flex ms-2 me-2">
                        <div class="text-center rounded-1 p-1 mb-3" style="background-color: #002850;">
                            <div class="text-light h4">Resultados</div>
                        </div>
                        <div class="row m-0 justify-content-center">
                            <xsl:for-each select="elecciones/resultados/partido">
                                <div class="col-lg-3 col-6 mb-3">
                                    <div class="card border-danger h-100" style="color: #002850;">
                                        <div class="card-body row align-items-center justify-content-between ms-0 ps-0">
                                            <div class="col-4">
                                                <img src="img/{@logo}.png" alt="logo" class="img-fluid w-100"/>
                                            </div>
                                            <div class="col-7">
                                                <h4 class="card-title">
                                                    <i class="fa fa-user me-2" aria-hidden="true"/>
                                                    <xsl:value-of select="escanos"/>
                                                </h4>
                                                <p class="card-text fw-semibold">
                                                    <xsl:value-of select="votos"/>
                                                    -
                                                    <xsl:value-of select="porcentaje"/>
                                                    %
                                                </p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </xsl:for-each>
                        </div>
                    </section>
                    
                    
                    
                    
                    
                    <section class="container-flex ms-2 me-2">
                        <div>
                            <div class="text-center rounded-1 p-1 mb-3" style="background-color: #0B294D;">
                                <div class="text-light h4">Por provincias</div>
                            </div>
                            
                            <xsl:for-each select="elecciones/provincia">
                                <div>
                                    <div class="accordion" id="accordionExample">
                                        <div class="accordion-item">
                                            <h2 class="accordion-header" id="heading{@id}">
                                                <button class="bg-light accordion-button" type="button" data-bs-toggle="collapse" data-bs-target="#collapse{@id}" aria-expanded="true" aria-controls="collapse{@id}" style="color: #002850;">
                                                    <h3>
                                                        <xsl:value-of select="@nombre"/>
                                                    </h3>
                                                </button>
                                            </h2>
                                            <div id="collapse{@id}" class="accordion-collapse collapse" aria-labelledby="heading{@id}">
                                                <div class="accordion-body">
                                                    <div class="row justify-content-center">
                                                        <div class="col-lg-3 col-6 text-center mb-3">
                                                            <div class="card border-danger h-100" style="color: #002850;">
                                                                <div class="card-body">
                                                                    <h4 class="card-title">Contabilizados</h4>
                                                                    <p class="card-text fw-semibold">
                                                                        <xsl:value-of select="votos/contabilizados/@numero"/>
                                                                        -
                                                                        <xsl:value-of select="votos/contabilizados/porcentaje"/>
                                                                        %
                                                                    </p>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="col-lg-3 col-6 text-center mb-3">
                                                            <div class="card border-danger h-100" style="color: #002850;">
                                                                <div class="card-body">
                                                                    <h4 class="card-title">Abstenciones</h4>
                                                                    <p class="card-text fw-semibold">
                                                                        <xsl:value-of select="votos/abstenciones/@numero"/>
                                                                        -
                                                                        <xsl:value-of select="votos/abstenciones/porcentaje"/>
                                                                        %
                                                                    </p>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="col-lg-3 col-6 text-center mb-3">
                                                            <div class="card border-danger h-100" style="color: #002850;">
                                                                <div class="card-body">
                                                                    <h4 class="card-title">Nulos</h4>
                                                                    <p class="card-text fw-semibold">
                                                                        <xsl:value-of select="votos/nulos/@numero"/>
                                                                        -
                                                                        <xsl:value-of select="votos/nulos/porcentaje"/>
                                                                        %
                                                                    </p>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="col-lg-3 col-6 text-center mb-3">
                                                            <div class="card border-danger h-100" style="color: #002850;">
                                                                <div class="card-body">
                                                                    <h4 class="card-title">Blancos</h4>
                                                                    <p class="card-text fw-semibold">
                                                                        <xsl:value-of select="votos/blancos/@numero"/>
                                                                        -
                                                                        <xsl:value-of select="votos/blancos/porcentaje"/>
                                                                        %
                                                                    </p>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <hr class="border-4 border-primary"/>
                                                    <div class="row justify-content-center">
                                                        <xsl:for-each select="resultados/partido">
                                                            <xsl:sort select="votos" order="descending" data-type="number"/>
                                                            <div class="col-lg-3 col-6 mb-3">
                                                                <div class="card border-danger h-100" style="color: #002850;">
                                                                    <div class="card-body row align-items-center justify-content-between ms-0 ps-0">
                                                                        <div class="col-4">
                                                                            <img src="img/{@logo}.png" alt="logo" class="img-fluid w-100"/>
                                                                        </div>
                                                                        <div class="col-7">
                                                                            <xsl:choose>
                                                                                <xsl:when test="escanos=0">
                                                                                    <h4 class="card-title text-danger">
                                                                                        <i class="fa fa-user me-2" aria-hidden="true"/>
                                                                                        <xsl:value-of select="escanos"/>
                                                                                    </h4>
                                                                                </xsl:when>
                                                                                <xsl:otherwise>
                                                                                    <h4 class="card-title">
                                                                                        <i class="fa fa-user me-2" aria-hidden="true"/>
                                                                                        <xsl:value-of select="escanos"/>
                                                                                    </h4>
                                                                                </xsl:otherwise>
                                                                            </xsl:choose>
                                                                            <p class="card-text fw-semibold">
                                                                                <xsl:value-of select="votos"/>
                                                                                -
                                                                                <xsl:value-of select="porcentaje"/>
                                                                                %
                                                                            </p>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </xsl:for-each>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </xsl:for-each>
                        </div>
                    </section>
                    
                    
                </main>
                <footer class="ms-2 me-2">
                    <nav
                        class="navbar navbar-expand-sm " style="background-color: #002850;"
                        >
                        <div class="container">
                            <a class="navbar-brand" href="#"></a>
                            <button
                                class="navbar-toggler d-lg-none"
                                type="button"
                                data-bs-toggle="collapse"
                                data-bs-target="#collapsibleNavId"
                                aria-controls="collapsibleNavId"
                                aria-expanded="false"
                                aria-label="Toggle navigation"
                                >
                                <span class="navbar-toggler-icon"></span>
                            </button>
                            <div class="collapse navbar-collapse" id="collapsibleNavId">
                                <ul class="navbar-nav mx-auto mt-2 mt-lg-0">
                                    <li class="nav-item h2">
                                        <a class="nav-link active text-light " href="#" aria-current="page"
                                            >XLS - S1DAW - S1DAM
                                        </a>
                                        >
                                    </li>
                                    
                                </ul>
                                
                            </div>
                        </div>
                    </nav>
                    
                </footer>
                <!-- Bootstrap JavaScript Libraries -->
                <script
                    src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js"
                    integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r"
                    crossorigin="anonymous"
                    ></script>
                
                <script
                    src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.min.js"
                    integrity="sha384-BBtl+eGJRgqQAUMxJ7pMwbEyER4l1g+O15P+16Ep7Q9Q+zqX6gSbd85u4mG4QzX+"
                    crossorigin="anonymous"
                    ></script>
            </body>
        </html>
        
        
    </xsl:template>
</xsl:stylesheet>