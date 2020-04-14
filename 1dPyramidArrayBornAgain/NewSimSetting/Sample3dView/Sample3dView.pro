<?xml version="1.0" encoding="UTF-8"?>
<BornAgain Version="1.16.0">
    <DocumentInfo ProjectName="Sample3dView"/>
    <DocumentModel Name="DefaultName">
        <Item ModelType="SimulationOptions" Tag="rootTag" DisplayName="SimulationOptions">
            <Item ModelType="Property" Tag="Run Policy" DisplayName="Run Policy">
                <Parameter ParType="ComboProperty" ParRole="0" ParValue="0" ParExt="Immediately;In background"/>
            </Item>
            <Item ModelType="Property" Tag="Number of Threads" DisplayName="Number of Threads">
                <Parameter ParType="ComboProperty" ParRole="0" ParValue="0" ParExt="Max (8 threads);7 threads;6 threads;5 threads;4 threads;3 threads;2 threads;1 thread"/>
            </Item>
            <Item ModelType="Property" Tag="Computation method" DisplayName="Computation method">
                <Parameter ParType="ComboProperty" ParRole="0" ParValue="0" ParExt="Analytical;Monte-Carlo Integration"/>
            </Item>
            <Item ModelType="Property" Tag="Number of MC points" DisplayName="Number of MC points">
                <Parameter ParType="int" ParRole="0" ParValue="100"/>
            </Item>
            <Item ModelType="Property" Tag="Material for Fresnel calculations" DisplayName="Material for Fresnel calculations">
                <Parameter ParType="ComboProperty" ParRole="0" ParValue="0" ParExt="Ambient Layer Material;Average Layer Material"/>
            </Item>
            <Item ModelType="Property" Tag="Include specular peak" DisplayName="Include specular peak">
                <Parameter ParType="ComboProperty" ParRole="0" ParValue="0" ParExt="No;Yes"/>
            </Item>
        </Item>
    </DocumentModel>
    <MaterialModel Name="DefaultName">
        <Item ModelType="Material" Tag="rootTag" DisplayName="Material">
            <Item ModelType="Property" Tag="Name" DisplayName="Name">
                <Parameter ParType="QString" ParRole="0" ParValue="Default"/>
            </Item>
            <Item ModelType="Property" Tag="Color" DisplayName="Color">
                <Parameter ParType="ExternalProperty" ParRole="0" Text="[0, 255, 0] (255)" Color="#ff00ff00" Identifier=""/>
            </Item>
            <Item ModelType="GroupProperty" Tag="Material data" DisplayName="Material data">
                <Parameter ParType="ComboProperty" ParRole="0" ParValue="0" ParExt="Refractive index based;SLD based"/>
                <Item ModelType="MaterialRefractiveData" Tag="Item tag" DisplayName="MaterialRefractiveData">
                    <Item ModelType="Property" Tag="Delta" DisplayName="Delta">
                        <Parameter ParType="double" ParRole="0" ParValue="1.000000000000e-03"/>
                    </Item>
                    <Item ModelType="Property" Tag="Beta" DisplayName="Beta">
                        <Parameter ParType="double" ParRole="0" ParValue="1.000000000000e-05"/>
                    </Item>
                </Item>
            </Item>
            <Item ModelType="Vector" Tag="Magnetization" DisplayName="Magnetization">
                <Parameter ParType="QString" ParRole="0" ParValue="(0, 0, 0)"/>
                <Item ModelType="Property" Tag="X" DisplayName="X">
                    <Parameter ParType="double" ParRole="0" ParValue="0.000000000000e+00"/>
                </Item>
                <Item ModelType="Property" Tag="Y" DisplayName="Y">
                    <Parameter ParType="double" ParRole="0" ParValue="0.000000000000e+00"/>
                </Item>
                <Item ModelType="Property" Tag="Z" DisplayName="Z">
                    <Parameter ParType="double" ParRole="0" ParValue="0.000000000000e+00"/>
                </Item>
            </Item>
            <Item ModelType="Property" Tag="Identifier" DisplayName="Identifier">
                <Parameter ParType="QString" ParRole="0" ParValue="{9f484ce5-754b-4899-942a-5c4dda654d15}"/>
            </Item>
        </Item>
        <Item ModelType="Material" Tag="rootTag" DisplayName="Material">
            <Item ModelType="Property" Tag="Name" DisplayName="Name">
                <Parameter ParType="QString" ParRole="0" ParValue="Air"/>
            </Item>
            <Item ModelType="Property" Tag="Color" DisplayName="Color">
                <Parameter ParType="ExternalProperty" ParRole="0" Text="[179, 242, 255] (255)" Color="#ffb3f2ff" Identifier=""/>
            </Item>
            <Item ModelType="GroupProperty" Tag="Material data" DisplayName="Material data">
                <Parameter ParType="ComboProperty" ParRole="0" ParValue="0" ParExt="Refractive index based;SLD based"/>
                <Item ModelType="MaterialRefractiveData" Tag="Item tag" DisplayName="MaterialRefractiveData">
                    <Item ModelType="Property" Tag="Delta" DisplayName="Delta">
                        <Parameter ParType="double" ParRole="0" ParValue="0.000000000000e+00"/>
                    </Item>
                    <Item ModelType="Property" Tag="Beta" DisplayName="Beta">
                        <Parameter ParType="double" ParRole="0" ParValue="0.000000000000e+00"/>
                    </Item>
                </Item>
            </Item>
            <Item ModelType="Vector" Tag="Magnetization" DisplayName="Magnetization">
                <Parameter ParType="QString" ParRole="0" ParValue="(0, 0, 0)"/>
                <Item ModelType="Property" Tag="X" DisplayName="X">
                    <Parameter ParType="double" ParRole="0" ParValue="0.000000000000e+00"/>
                </Item>
                <Item ModelType="Property" Tag="Y" DisplayName="Y">
                    <Parameter ParType="double" ParRole="0" ParValue="0.000000000000e+00"/>
                </Item>
                <Item ModelType="Property" Tag="Z" DisplayName="Z">
                    <Parameter ParType="double" ParRole="0" ParValue="0.000000000000e+00"/>
                </Item>
            </Item>
            <Item ModelType="Property" Tag="Identifier" DisplayName="Identifier">
                <Parameter ParType="QString" ParRole="0" ParValue="{e0ea1cff-81d8-4553-a9a6-5d3611aab548}"/>
            </Item>
        </Item>
        <Item ModelType="Material" Tag="rootTag" DisplayName="Material">
            <Item ModelType="Property" Tag="Name" DisplayName="Name">
                <Parameter ParType="QString" ParRole="0" ParValue="Particle"/>
            </Item>
            <Item ModelType="Property" Tag="Color" DisplayName="Color">
                <Parameter ParType="ExternalProperty" ParRole="0" Text="[146, 198, 255] (255)" Color="#ff92c6ff" Identifier=""/>
            </Item>
            <Item ModelType="GroupProperty" Tag="Material data" DisplayName="Material data">
                <Parameter ParType="ComboProperty" ParRole="0" ParValue="0" ParExt="Refractive index based;SLD based"/>
                <Item ModelType="MaterialRefractiveData" Tag="Item tag" DisplayName="MaterialRefractiveData">
                    <Item ModelType="Property" Tag="Delta" DisplayName="Delta">
                        <Parameter ParType="double" ParRole="0" ParValue="6.000000000000e-04"/>
                    </Item>
                    <Item ModelType="Property" Tag="Beta" DisplayName="Beta">
                        <Parameter ParType="double" ParRole="0" ParValue="2.000000000000e-08"/>
                    </Item>
                </Item>
            </Item>
            <Item ModelType="Vector" Tag="Magnetization" DisplayName="Magnetization">
                <Parameter ParType="QString" ParRole="0" ParValue="(0, 0, 0)"/>
                <Item ModelType="Property" Tag="X" DisplayName="X">
                    <Parameter ParType="double" ParRole="0" ParValue="0.000000000000e+00"/>
                </Item>
                <Item ModelType="Property" Tag="Y" DisplayName="Y">
                    <Parameter ParType="double" ParRole="0" ParValue="0.000000000000e+00"/>
                </Item>
                <Item ModelType="Property" Tag="Z" DisplayName="Z">
                    <Parameter ParType="double" ParRole="0" ParValue="0.000000000000e+00"/>
                </Item>
            </Item>
            <Item ModelType="Property" Tag="Identifier" DisplayName="Identifier">
                <Parameter ParType="QString" ParRole="0" ParValue="{332a023c-6d91-4ada-8eed-7a2a823a824d}"/>
            </Item>
        </Item>
        <Item ModelType="Material" Tag="rootTag" DisplayName="Material">
            <Item ModelType="Property" Tag="Name" DisplayName="Name">
                <Parameter ParType="QString" ParRole="0" ParValue="Substrate"/>
            </Item>
            <Item ModelType="Property" Tag="Color" DisplayName="Color">
                <Parameter ParType="ExternalProperty" ParRole="0" Text="[205, 102, 0] (255)" Color="#ffcd6600" Identifier=""/>
            </Item>
            <Item ModelType="GroupProperty" Tag="Material data" DisplayName="Material data">
                <Parameter ParType="ComboProperty" ParRole="0" ParValue="0" ParExt="Refractive index based;SLD based"/>
                <Item ModelType="MaterialRefractiveData" Tag="Item tag" DisplayName="MaterialRefractiveData">
                    <Item ModelType="Property" Tag="Delta" DisplayName="Delta">
                        <Parameter ParType="double" ParRole="0" ParValue="6.000000000000e-06"/>
                    </Item>
                    <Item ModelType="Property" Tag="Beta" DisplayName="Beta">
                        <Parameter ParType="double" ParRole="0" ParValue="2.000000000000e-08"/>
                    </Item>
                </Item>
            </Item>
            <Item ModelType="Vector" Tag="Magnetization" DisplayName="Magnetization">
                <Parameter ParType="QString" ParRole="0" ParValue="(0, 0, 0)"/>
                <Item ModelType="Property" Tag="X" DisplayName="X">
                    <Parameter ParType="double" ParRole="0" ParValue="0.000000000000e+00"/>
                </Item>
                <Item ModelType="Property" Tag="Y" DisplayName="Y">
                    <Parameter ParType="double" ParRole="0" ParValue="0.000000000000e+00"/>
                </Item>
                <Item ModelType="Property" Tag="Z" DisplayName="Z">
                    <Parameter ParType="double" ParRole="0" ParValue="0.000000000000e+00"/>
                </Item>
            </Item>
            <Item ModelType="Property" Tag="Identifier" DisplayName="Identifier">
                <Parameter ParType="QString" ParRole="0" ParValue="{099a8aac-b0f0-4bd6-8f84-bf36da7bb7d5}"/>
            </Item>
        </Item>
        <Item ModelType="Material" Tag="rootTag" DisplayName="Material">
            <Item ModelType="Property" Tag="Name" DisplayName="Name">
                <Parameter ParType="QString" ParRole="0" ParValue="sample_air"/>
            </Item>
            <Item ModelType="Property" Tag="Color" DisplayName="Color">
                <Parameter ParType="ExternalProperty" ParRole="0" Text="[108, 225, 132] (255)" Color="#ff6ce184" Identifier=""/>
            </Item>
            <Item ModelType="GroupProperty" Tag="Material data" DisplayName="Material data">
                <Parameter ParType="ComboProperty" ParRole="0" ParValue="1" ParExt="Refractive index based;SLD based"/>
                <Item ModelType="MaterialRefractiveData" Tag="Item tag" DisplayName="MaterialRefractiveData">
                    <Item ModelType="Property" Tag="Delta" DisplayName="Delta">
                        <Parameter ParType="double" ParRole="0" ParValue="0.000000000000e+00"/>
                    </Item>
                    <Item ModelType="Property" Tag="Beta" DisplayName="Beta">
                        <Parameter ParType="double" ParRole="0" ParValue="0.000000000000e+00"/>
                    </Item>
                </Item>
                <Item ModelType="MaterialSLDData" Tag="Item tag" DisplayName="MaterialSLDData">
                    <Item ModelType="Property" Tag="SLD, real" DisplayName="SLD, real">
                        <Parameter ParType="double" ParRole="0" ParValue="0.000000000000e+00"/>
                    </Item>
                    <Item ModelType="Property" Tag="SLD, imaginary" DisplayName="SLD, imaginary">
                        <Parameter ParType="double" ParRole="0" ParValue="0.000000000000e+00"/>
                    </Item>
                </Item>
            </Item>
            <Item ModelType="Vector" Tag="Magnetization" DisplayName="Magnetization">
                <Parameter ParType="QString" ParRole="0" ParValue="(0, 0, 0)"/>
                <Item ModelType="Property" Tag="X" DisplayName="X">
                    <Parameter ParType="double" ParRole="0" ParValue="0.000000000000e+00"/>
                </Item>
                <Item ModelType="Property" Tag="Y" DisplayName="Y">
                    <Parameter ParType="double" ParRole="0" ParValue="0.000000000000e+00"/>
                </Item>
                <Item ModelType="Property" Tag="Z" DisplayName="Z">
                    <Parameter ParType="double" ParRole="0" ParValue="0.000000000000e+00"/>
                </Item>
            </Item>
            <Item ModelType="Property" Tag="Identifier" DisplayName="Identifier">
                <Parameter ParType="QString" ParRole="0" ParValue="{806491c0-c51a-4ecf-a034-15bcdf70f581}"/>
            </Item>
        </Item>
        <Item ModelType="Material" Tag="rootTag" DisplayName="Material">
            <Item ModelType="Property" Tag="Name" DisplayName="Name">
                <Parameter ParType="QString" ParRole="0" ParValue="sample_silicon"/>
            </Item>
            <Item ModelType="Property" Tag="Color" DisplayName="Color">
                <Parameter ParType="ExternalProperty" ParRole="0" Text="[241, 73, 144] (255)" Color="#fff14990" Identifier=""/>
            </Item>
            <Item ModelType="GroupProperty" Tag="Material data" DisplayName="Material data">
                <Parameter ParType="ComboProperty" ParRole="0" ParValue="1" ParExt="Refractive index based;SLD based"/>
                <Item ModelType="MaterialRefractiveData" Tag="Item tag" DisplayName="MaterialRefractiveData">
                    <Item ModelType="Property" Tag="Delta" DisplayName="Delta">
                        <Parameter ParType="double" ParRole="0" ParValue="0.000000000000e+00"/>
                    </Item>
                    <Item ModelType="Property" Tag="Beta" DisplayName="Beta">
                        <Parameter ParType="double" ParRole="0" ParValue="0.000000000000e+00"/>
                    </Item>
                </Item>
                <Item ModelType="MaterialSLDData" Tag="Item tag" DisplayName="MaterialSLDData">
                    <Item ModelType="Property" Tag="SLD, real" DisplayName="SLD, real">
                        <Parameter ParType="double" ParRole="0" ParValue="1.992000000000e-05"/>
                    </Item>
                    <Item ModelType="Property" Tag="SLD, imaginary" DisplayName="SLD, imaginary">
                        <Parameter ParType="double" ParRole="0" ParValue="0.000000000000e+00"/>
                    </Item>
                </Item>
            </Item>
            <Item ModelType="Vector" Tag="Magnetization" DisplayName="Magnetization">
                <Parameter ParType="QString" ParRole="0" ParValue="(0, 0, 0)"/>
                <Item ModelType="Property" Tag="X" DisplayName="X">
                    <Parameter ParType="double" ParRole="0" ParValue="0.000000000000e+00"/>
                </Item>
                <Item ModelType="Property" Tag="Y" DisplayName="Y">
                    <Parameter ParType="double" ParRole="0" ParValue="0.000000000000e+00"/>
                </Item>
                <Item ModelType="Property" Tag="Z" DisplayName="Z">
                    <Parameter ParType="double" ParRole="0" ParValue="0.000000000000e+00"/>
                </Item>
            </Item>
            <Item ModelType="Property" Tag="Identifier" DisplayName="Identifier">
                <Parameter ParType="QString" ParRole="0" ParValue="{0ad14b70-743c-46d0-8111-9e77fff90d92}"/>
            </Item>
        </Item>
        <Item ModelType="Material" Tag="rootTag" DisplayName="Material">
            <Item ModelType="Property" Tag="Name" DisplayName="Name">
                <Parameter ParType="QString" ParRole="0" ParValue="sample_gold"/>
            </Item>
            <Item ModelType="Property" Tag="Color" DisplayName="Color">
                <Parameter ParType="ExternalProperty" ParRole="0" Text="[233, 187, 241] (255)" Color="#ffe9bbf1" Identifier=""/>
            </Item>
            <Item ModelType="GroupProperty" Tag="Material data" DisplayName="Material data">
                <Parameter ParType="ComboProperty" ParRole="0" ParValue="1" ParExt="Refractive index based;SLD based"/>
                <Item ModelType="MaterialRefractiveData" Tag="Item tag" DisplayName="MaterialRefractiveData">
                    <Item ModelType="Property" Tag="Delta" DisplayName="Delta">
                        <Parameter ParType="double" ParRole="0" ParValue="0.000000000000e+00"/>
                    </Item>
                    <Item ModelType="Property" Tag="Beta" DisplayName="Beta">
                        <Parameter ParType="double" ParRole="0" ParValue="0.000000000000e+00"/>
                    </Item>
                </Item>
                <Item ModelType="MaterialSLDData" Tag="Item tag" DisplayName="MaterialSLDData">
                    <Item ModelType="Property" Tag="SLD, real" DisplayName="SLD, real">
                        <Parameter ParType="double" ParRole="0" ParValue="1.082900000000e-04"/>
                    </Item>
                    <Item ModelType="Property" Tag="SLD, imaginary" DisplayName="SLD, imaginary">
                        <Parameter ParType="double" ParRole="0" ParValue="0.000000000000e+00"/>
                    </Item>
                </Item>
            </Item>
            <Item ModelType="Vector" Tag="Magnetization" DisplayName="Magnetization">
                <Parameter ParType="QString" ParRole="0" ParValue="(0, 0, 0)"/>
                <Item ModelType="Property" Tag="X" DisplayName="X">
                    <Parameter ParType="double" ParRole="0" ParValue="0.000000000000e+00"/>
                </Item>
                <Item ModelType="Property" Tag="Y" DisplayName="Y">
                    <Parameter ParType="double" ParRole="0" ParValue="0.000000000000e+00"/>
                </Item>
                <Item ModelType="Property" Tag="Z" DisplayName="Z">
                    <Parameter ParType="double" ParRole="0" ParValue="0.000000000000e+00"/>
                </Item>
            </Item>
            <Item ModelType="Property" Tag="Identifier" DisplayName="Identifier">
                <Parameter ParType="QString" ParRole="0" ParValue="{43399bc1-26fa-420b-bcfe-77f84d8b5874}"/>
            </Item>
        </Item>
        <Item ModelType="Material" Tag="rootTag" DisplayName="Material">
            <Item ModelType="Property" Tag="Name" DisplayName="Name">
                <Parameter ParType="QString" ParRole="0" ParValue="sample_polymer"/>
            </Item>
            <Item ModelType="Property" Tag="Color" DisplayName="Color">
                <Parameter ParType="ExternalProperty" ParRole="0" Text="[166, 179, 235] (255)" Color="#ffa6b3eb" Identifier=""/>
            </Item>
            <Item ModelType="GroupProperty" Tag="Material data" DisplayName="Material data">
                <Parameter ParType="ComboProperty" ParRole="0" ParValue="1" ParExt="Refractive index based;SLD based"/>
                <Item ModelType="MaterialRefractiveData" Tag="Item tag" DisplayName="MaterialRefractiveData">
                    <Item ModelType="Property" Tag="Delta" DisplayName="Delta">
                        <Parameter ParType="double" ParRole="0" ParValue="0.000000000000e+00"/>
                    </Item>
                    <Item ModelType="Property" Tag="Beta" DisplayName="Beta">
                        <Parameter ParType="double" ParRole="0" ParValue="0.000000000000e+00"/>
                    </Item>
                </Item>
                <Item ModelType="MaterialSLDData" Tag="Item tag" DisplayName="MaterialSLDData">
                    <Item ModelType="Property" Tag="SLD, real" DisplayName="SLD, real">
                        <Parameter ParType="double" ParRole="0" ParValue="1.000000000000e-05"/>
                    </Item>
                    <Item ModelType="Property" Tag="SLD, imaginary" DisplayName="SLD, imaginary">
                        <Parameter ParType="double" ParRole="0" ParValue="8.000000000000e-09"/>
                    </Item>
                </Item>
            </Item>
            <Item ModelType="Vector" Tag="Magnetization" DisplayName="Magnetization">
                <Parameter ParType="QString" ParRole="0" ParValue="(0, 0, 0)"/>
                <Item ModelType="Property" Tag="X" DisplayName="X">
                    <Parameter ParType="double" ParRole="0" ParValue="0.000000000000e+00"/>
                </Item>
                <Item ModelType="Property" Tag="Y" DisplayName="Y">
                    <Parameter ParType="double" ParRole="0" ParValue="0.000000000000e+00"/>
                </Item>
                <Item ModelType="Property" Tag="Z" DisplayName="Z">
                    <Parameter ParType="double" ParRole="0" ParValue="0.000000000000e+00"/>
                </Item>
            </Item>
            <Item ModelType="Property" Tag="Identifier" DisplayName="Identifier">
                <Parameter ParType="QString" ParRole="0" ParValue="{4fde89a5-a7fa-4080-a25f-ea8eb4f260b0}"/>
            </Item>
        </Item>
        <Item ModelType="Material" Tag="rootTag" DisplayName="Material">
            <Item ModelType="Property" Tag="Name" DisplayName="Name">
                <Parameter ParType="QString" ParRole="0" ParValue="example08_Air"/>
            </Item>
            <Item ModelType="Property" Tag="Color" DisplayName="Color">
                <Parameter ParType="ExternalProperty" ParRole="0" Text="[179, 242, 255] (255)" Color="#ffb3f2ff" Identifier=""/>
            </Item>
            <Item ModelType="GroupProperty" Tag="Material data" DisplayName="Material data">
                <Parameter ParType="ComboProperty" ParRole="0" ParValue="0" ParExt="Refractive index based;SLD based"/>
                <Item ModelType="MaterialRefractiveData" Tag="Item tag" DisplayName="MaterialRefractiveData">
                    <Item ModelType="Property" Tag="Delta" DisplayName="Delta">
                        <Parameter ParType="double" ParRole="0" ParValue="0.000000000000e+00"/>
                    </Item>
                    <Item ModelType="Property" Tag="Beta" DisplayName="Beta">
                        <Parameter ParType="double" ParRole="0" ParValue="0.000000000000e+00"/>
                    </Item>
                </Item>
            </Item>
            <Item ModelType="Vector" Tag="Magnetization" DisplayName="Magnetization">
                <Parameter ParType="QString" ParRole="0" ParValue="(0, 0, 0)"/>
                <Item ModelType="Property" Tag="X" DisplayName="X">
                    <Parameter ParType="double" ParRole="0" ParValue="0.000000000000e+00"/>
                </Item>
                <Item ModelType="Property" Tag="Y" DisplayName="Y">
                    <Parameter ParType="double" ParRole="0" ParValue="0.000000000000e+00"/>
                </Item>
                <Item ModelType="Property" Tag="Z" DisplayName="Z">
                    <Parameter ParType="double" ParRole="0" ParValue="0.000000000000e+00"/>
                </Item>
            </Item>
            <Item ModelType="Property" Tag="Identifier" DisplayName="Identifier">
                <Parameter ParType="QString" ParRole="0" ParValue="{0c160c05-0401-45b6-90b9-185533b1fec1}"/>
            </Item>
        </Item>
        <Item ModelType="Material" Tag="rootTag" DisplayName="Material">
            <Item ModelType="Property" Tag="Name" DisplayName="Name">
                <Parameter ParType="QString" ParRole="0" ParValue="example08_Particle"/>
            </Item>
            <Item ModelType="Property" Tag="Color" DisplayName="Color">
                <Parameter ParType="ExternalProperty" ParRole="0" Text="[146, 198, 255] (255)" Color="#ff92c6ff" Identifier=""/>
            </Item>
            <Item ModelType="GroupProperty" Tag="Material data" DisplayName="Material data">
                <Parameter ParType="ComboProperty" ParRole="0" ParValue="0" ParExt="Refractive index based;SLD based"/>
                <Item ModelType="MaterialRefractiveData" Tag="Item tag" DisplayName="MaterialRefractiveData">
                    <Item ModelType="Property" Tag="Delta" DisplayName="Delta">
                        <Parameter ParType="double" ParRole="0" ParValue="6.000000000000e-04"/>
                    </Item>
                    <Item ModelType="Property" Tag="Beta" DisplayName="Beta">
                        <Parameter ParType="double" ParRole="0" ParValue="2.000000000000e-08"/>
                    </Item>
                </Item>
            </Item>
            <Item ModelType="Vector" Tag="Magnetization" DisplayName="Magnetization">
                <Parameter ParType="QString" ParRole="0" ParValue="(0, 0, 0)"/>
                <Item ModelType="Property" Tag="X" DisplayName="X">
                    <Parameter ParType="double" ParRole="0" ParValue="0.000000000000e+00"/>
                </Item>
                <Item ModelType="Property" Tag="Y" DisplayName="Y">
                    <Parameter ParType="double" ParRole="0" ParValue="0.000000000000e+00"/>
                </Item>
                <Item ModelType="Property" Tag="Z" DisplayName="Z">
                    <Parameter ParType="double" ParRole="0" ParValue="0.000000000000e+00"/>
                </Item>
            </Item>
            <Item ModelType="Property" Tag="Identifier" DisplayName="Identifier">
                <Parameter ParType="QString" ParRole="0" ParValue="{396b2a6f-90a3-4e1c-8947-6cfafcd7e22f}"/>
            </Item>
        </Item>
        <Item ModelType="Material" Tag="rootTag" DisplayName="Material">
            <Item ModelType="Property" Tag="Name" DisplayName="Name">
                <Parameter ParType="QString" ParRole="0" ParValue="example01_Air"/>
            </Item>
            <Item ModelType="Property" Tag="Color" DisplayName="Color">
                <Parameter ParType="ExternalProperty" ParRole="0" Text="[179, 242, 255] (255)" Color="#ffb3f2ff" Identifier=""/>
            </Item>
            <Item ModelType="GroupProperty" Tag="Material data" DisplayName="Material data">
                <Parameter ParType="ComboProperty" ParRole="0" ParValue="0" ParExt="Refractive index based;SLD based"/>
                <Item ModelType="MaterialRefractiveData" Tag="Item tag" DisplayName="MaterialRefractiveData">
                    <Item ModelType="Property" Tag="Delta" DisplayName="Delta">
                        <Parameter ParType="double" ParRole="0" ParValue="0.000000000000e+00"/>
                    </Item>
                    <Item ModelType="Property" Tag="Beta" DisplayName="Beta">
                        <Parameter ParType="double" ParRole="0" ParValue="0.000000000000e+00"/>
                    </Item>
                </Item>
            </Item>
            <Item ModelType="Vector" Tag="Magnetization" DisplayName="Magnetization">
                <Parameter ParType="QString" ParRole="0" ParValue="(0, 0, 0)"/>
                <Item ModelType="Property" Tag="X" DisplayName="X">
                    <Parameter ParType="double" ParRole="0" ParValue="0.000000000000e+00"/>
                </Item>
                <Item ModelType="Property" Tag="Y" DisplayName="Y">
                    <Parameter ParType="double" ParRole="0" ParValue="0.000000000000e+00"/>
                </Item>
                <Item ModelType="Property" Tag="Z" DisplayName="Z">
                    <Parameter ParType="double" ParRole="0" ParValue="0.000000000000e+00"/>
                </Item>
            </Item>
            <Item ModelType="Property" Tag="Identifier" DisplayName="Identifier">
                <Parameter ParType="QString" ParRole="0" ParValue="{15f57653-4d3f-44af-aa12-df387de70db7}"/>
            </Item>
        </Item>
        <Item ModelType="Material" Tag="rootTag" DisplayName="Material">
            <Item ModelType="Property" Tag="Name" DisplayName="Name">
                <Parameter ParType="QString" ParRole="0" ParValue="example01_Particle"/>
            </Item>
            <Item ModelType="Property" Tag="Color" DisplayName="Color">
                <Parameter ParType="ExternalProperty" ParRole="0" Text="[146, 198, 255] (255)" Color="#ff92c6ff" Identifier=""/>
            </Item>
            <Item ModelType="GroupProperty" Tag="Material data" DisplayName="Material data">
                <Parameter ParType="ComboProperty" ParRole="0" ParValue="0" ParExt="Refractive index based;SLD based"/>
                <Item ModelType="MaterialRefractiveData" Tag="Item tag" DisplayName="MaterialRefractiveData">
                    <Item ModelType="Property" Tag="Delta" DisplayName="Delta">
                        <Parameter ParType="double" ParRole="0" ParValue="6.000000000000e-04"/>
                    </Item>
                    <Item ModelType="Property" Tag="Beta" DisplayName="Beta">
                        <Parameter ParType="double" ParRole="0" ParValue="2.000000000000e-08"/>
                    </Item>
                </Item>
            </Item>
            <Item ModelType="Vector" Tag="Magnetization" DisplayName="Magnetization">
                <Parameter ParType="QString" ParRole="0" ParValue="(0, 0, 0)"/>
                <Item ModelType="Property" Tag="X" DisplayName="X">
                    <Parameter ParType="double" ParRole="0" ParValue="0.000000000000e+00"/>
                </Item>
                <Item ModelType="Property" Tag="Y" DisplayName="Y">
                    <Parameter ParType="double" ParRole="0" ParValue="0.000000000000e+00"/>
                </Item>
                <Item ModelType="Property" Tag="Z" DisplayName="Z">
                    <Parameter ParType="double" ParRole="0" ParValue="0.000000000000e+00"/>
                </Item>
            </Item>
            <Item ModelType="Property" Tag="Identifier" DisplayName="Identifier">
                <Parameter ParType="QString" ParRole="0" ParValue="{14688413-de44-42c9-a60e-6bff60bfec54}"/>
            </Item>
        </Item>
        <Item ModelType="Material" Tag="rootTag" DisplayName="Material">
            <Item ModelType="Property" Tag="Name" DisplayName="Name">
                <Parameter ParType="QString" ParRole="0" ParValue="example01_Substrate"/>
            </Item>
            <Item ModelType="Property" Tag="Color" DisplayName="Color">
                <Parameter ParType="ExternalProperty" ParRole="0" Text="[205, 102, 0] (255)" Color="#ffcd6600" Identifier=""/>
            </Item>
            <Item ModelType="GroupProperty" Tag="Material data" DisplayName="Material data">
                <Parameter ParType="ComboProperty" ParRole="0" ParValue="0" ParExt="Refractive index based;SLD based"/>
                <Item ModelType="MaterialRefractiveData" Tag="Item tag" DisplayName="MaterialRefractiveData">
                    <Item ModelType="Property" Tag="Delta" DisplayName="Delta">
                        <Parameter ParType="double" ParRole="0" ParValue="6.000000000000e-06"/>
                    </Item>
                    <Item ModelType="Property" Tag="Beta" DisplayName="Beta">
                        <Parameter ParType="double" ParRole="0" ParValue="2.000000000000e-08"/>
                    </Item>
                </Item>
            </Item>
            <Item ModelType="Vector" Tag="Magnetization" DisplayName="Magnetization">
                <Parameter ParType="QString" ParRole="0" ParValue="(0, 0, 0)"/>
                <Item ModelType="Property" Tag="X" DisplayName="X">
                    <Parameter ParType="double" ParRole="0" ParValue="0.000000000000e+00"/>
                </Item>
                <Item ModelType="Property" Tag="Y" DisplayName="Y">
                    <Parameter ParType="double" ParRole="0" ParValue="0.000000000000e+00"/>
                </Item>
                <Item ModelType="Property" Tag="Z" DisplayName="Z">
                    <Parameter ParType="double" ParRole="0" ParValue="0.000000000000e+00"/>
                </Item>
            </Item>
            <Item ModelType="Property" Tag="Identifier" DisplayName="Identifier">
                <Parameter ParType="QString" ParRole="0" ParValue="{8e8ca269-745c-4c60-bce4-885c514392fa}"/>
            </Item>
        </Item>
        <Item ModelType="Material" Tag="rootTag" DisplayName="Material">
            <Item ModelType="Property" Tag="Name" DisplayName="Name">
                <Parameter ParType="QString" ParRole="0" ParValue="example06_Air"/>
            </Item>
            <Item ModelType="Property" Tag="Color" DisplayName="Color">
                <Parameter ParType="ExternalProperty" ParRole="0" Text="[179, 242, 255] (255)" Color="#ffb3f2ff" Identifier=""/>
            </Item>
            <Item ModelType="GroupProperty" Tag="Material data" DisplayName="Material data">
                <Parameter ParType="ComboProperty" ParRole="0" ParValue="0" ParExt="Refractive index based;SLD based"/>
                <Item ModelType="MaterialRefractiveData" Tag="Item tag" DisplayName="MaterialRefractiveData">
                    <Item ModelType="Property" Tag="Delta" DisplayName="Delta">
                        <Parameter ParType="double" ParRole="0" ParValue="0.000000000000e+00"/>
                    </Item>
                    <Item ModelType="Property" Tag="Beta" DisplayName="Beta">
                        <Parameter ParType="double" ParRole="0" ParValue="0.000000000000e+00"/>
                    </Item>
                </Item>
            </Item>
            <Item ModelType="Vector" Tag="Magnetization" DisplayName="Magnetization">
                <Parameter ParType="QString" ParRole="0" ParValue="(0, 0, 0)"/>
                <Item ModelType="Property" Tag="X" DisplayName="X">
                    <Parameter ParType="double" ParRole="0" ParValue="0.000000000000e+00"/>
                </Item>
                <Item ModelType="Property" Tag="Y" DisplayName="Y">
                    <Parameter ParType="double" ParRole="0" ParValue="0.000000000000e+00"/>
                </Item>
                <Item ModelType="Property" Tag="Z" DisplayName="Z">
                    <Parameter ParType="double" ParRole="0" ParValue="0.000000000000e+00"/>
                </Item>
            </Item>
            <Item ModelType="Property" Tag="Identifier" DisplayName="Identifier">
                <Parameter ParType="QString" ParRole="0" ParValue="{3a515a41-b7ff-4247-85ac-593ecd253fe1}"/>
            </Item>
        </Item>
        <Item ModelType="Material" Tag="rootTag" DisplayName="Material">
            <Item ModelType="Property" Tag="Name" DisplayName="Name">
                <Parameter ParType="QString" ParRole="0" ParValue="example06_Particle"/>
            </Item>
            <Item ModelType="Property" Tag="Color" DisplayName="Color">
                <Parameter ParType="ExternalProperty" ParRole="0" Text="[146, 198, 255] (255)" Color="#ff92c6ff" Identifier=""/>
            </Item>
            <Item ModelType="GroupProperty" Tag="Material data" DisplayName="Material data">
                <Parameter ParType="ComboProperty" ParRole="0" ParValue="0" ParExt="Refractive index based;SLD based"/>
                <Item ModelType="MaterialRefractiveData" Tag="Item tag" DisplayName="MaterialRefractiveData">
                    <Item ModelType="Property" Tag="Delta" DisplayName="Delta">
                        <Parameter ParType="double" ParRole="0" ParValue="6.000000000000e-04"/>
                    </Item>
                    <Item ModelType="Property" Tag="Beta" DisplayName="Beta">
                        <Parameter ParType="double" ParRole="0" ParValue="2.000000000000e-08"/>
                    </Item>
                </Item>
            </Item>
            <Item ModelType="Vector" Tag="Magnetization" DisplayName="Magnetization">
                <Parameter ParType="QString" ParRole="0" ParValue="(0, 0, 0)"/>
                <Item ModelType="Property" Tag="X" DisplayName="X">
                    <Parameter ParType="double" ParRole="0" ParValue="0.000000000000e+00"/>
                </Item>
                <Item ModelType="Property" Tag="Y" DisplayName="Y">
                    <Parameter ParType="double" ParRole="0" ParValue="0.000000000000e+00"/>
                </Item>
                <Item ModelType="Property" Tag="Z" DisplayName="Z">
                    <Parameter ParType="double" ParRole="0" ParValue="0.000000000000e+00"/>
                </Item>
            </Item>
            <Item ModelType="Property" Tag="Identifier" DisplayName="Identifier">
                <Parameter ParType="QString" ParRole="0" ParValue="{928cad63-338b-4e92-aded-ed097250bfd2}"/>
            </Item>
        </Item>
        <Item ModelType="Material" Tag="rootTag" DisplayName="Material">
            <Item ModelType="Property" Tag="Name" DisplayName="Name">
                <Parameter ParType="QString" ParRole="0" ParValue="example06_Substrate"/>
            </Item>
            <Item ModelType="Property" Tag="Color" DisplayName="Color">
                <Parameter ParType="ExternalProperty" ParRole="0" Text="[205, 102, 0] (255)" Color="#ffcd6600" Identifier=""/>
            </Item>
            <Item ModelType="GroupProperty" Tag="Material data" DisplayName="Material data">
                <Parameter ParType="ComboProperty" ParRole="0" ParValue="0" ParExt="Refractive index based;SLD based"/>
                <Item ModelType="MaterialRefractiveData" Tag="Item tag" DisplayName="MaterialRefractiveData">
                    <Item ModelType="Property" Tag="Delta" DisplayName="Delta">
                        <Parameter ParType="double" ParRole="0" ParValue="6.000000000000e-06"/>
                    </Item>
                    <Item ModelType="Property" Tag="Beta" DisplayName="Beta">
                        <Parameter ParType="double" ParRole="0" ParValue="2.000000000000e-08"/>
                    </Item>
                </Item>
            </Item>
            <Item ModelType="Vector" Tag="Magnetization" DisplayName="Magnetization">
                <Parameter ParType="QString" ParRole="0" ParValue="(0, 0, 0)"/>
                <Item ModelType="Property" Tag="X" DisplayName="X">
                    <Parameter ParType="double" ParRole="0" ParValue="0.000000000000e+00"/>
                </Item>
                <Item ModelType="Property" Tag="Y" DisplayName="Y">
                    <Parameter ParType="double" ParRole="0" ParValue="0.000000000000e+00"/>
                </Item>
                <Item ModelType="Property" Tag="Z" DisplayName="Z">
                    <Parameter ParType="double" ParRole="0" ParValue="0.000000000000e+00"/>
                </Item>
            </Item>
            <Item ModelType="Property" Tag="Identifier" DisplayName="Identifier">
                <Parameter ParType="QString" ParRole="0" ParValue="{2594da07-fd2f-4a34-9324-0b2ea07b6004}"/>
            </Item>
        </Item>
    </MaterialModel>
    <InstrumentModel Name="DefaultName">
        <Item ModelType="GISASInstrument" Tag="rootTag" DisplayName="GISASInstrument">
            <Item ModelType="Property" Tag="Name" DisplayName="Name">
                <Parameter ParType="QString" ParRole="0" ParValue="GISAS"/>
            </Item>
            <Item ModelType="Property" Tag="Identifier" DisplayName="Identifier">
                <Parameter ParType="QString" ParRole="0" ParValue="{3c02e4b0-e7d9-4389-bd5e-51ad923f4075}"/>
            </Item>
            <Item ModelType="GISASBeam" Tag="Beam" DisplayName="Beam">
                <Item ModelType="Property" Tag="Intensity" DisplayName="Intensity">
                    <Parameter ParType="double" ParRole="0" ParValue="1.000000000000e+08"/>
                </Item>
                <Item ModelType="BeamAzimuthalAngle" Tag="AzimuthalAngle" DisplayName="AzimuthalAngle">
                    <Item ModelType="GroupProperty" Tag="Distribution" DisplayName="Distribution">
                        <Parameter ParType="ComboProperty" ParRole="0" ParValue="5" ParExt="Cosine;Gate;Gaussian;Log Normal;Lorentz;None;Trapezoid"/>
                        <Item ModelType="DistributionNone" Tag="Item tag" DisplayName="DistributionNone">
                            <Item ModelType="Property" Tag="is initialized" DisplayName="is initialized">
                                <Parameter ParType="bool" ParRole="0" ParValue="0"/>
                            </Item>
                            <Item ModelType="Property" Tag="Mean" DisplayName="Value">
                                <Parameter ParType="double" ParRole="0" ParValue="0.000000000000e+00"/>
                            </Item>
                        </Item>
                    </Item>
                </Item>
                <Item ModelType="Vector" Tag="Polarization" DisplayName="Polarization">
                    <Parameter ParType="QString" ParRole="0" ParValue="(0, 0, 0)"/>
                    <Item ModelType="Property" Tag="X" DisplayName="X">
                        <Parameter ParType="double" ParRole="0" ParValue="0.000000000000e+00"/>
                    </Item>
                    <Item ModelType="Property" Tag="Y" DisplayName="Y">
                        <Parameter ParType="double" ParRole="0" ParValue="0.000000000000e+00"/>
                    </Item>
                    <Item ModelType="Property" Tag="Z" DisplayName="Z">
                        <Parameter ParType="double" ParRole="0" ParValue="0.000000000000e+00"/>
                    </Item>
                </Item>
                <Item ModelType="BeamInclinationAngle" Tag="InclinationAngle" DisplayName="InclinationAngle">
                    <Item ModelType="GroupProperty" Tag="Distribution" DisplayName="Distribution">
                        <Parameter ParType="ComboProperty" ParRole="0" ParValue="5" ParExt="Cosine;Gate;Gaussian;Log Normal;Lorentz;None;Trapezoid"/>
                        <Item ModelType="DistributionNone" Tag="Item tag" DisplayName="DistributionNone">
                            <Item ModelType="Property" Tag="is initialized" DisplayName="is initialized">
                                <Parameter ParType="bool" ParRole="0" ParValue="0"/>
                            </Item>
                            <Item ModelType="Property" Tag="Mean" DisplayName="Value">
                                <Parameter ParType="double" ParRole="0" ParValue="4.000000000000e-01"/>
                            </Item>
                        </Item>
                    </Item>
                </Item>
                <Item ModelType="BeamWavelength" Tag="Wavelength" DisplayName="Wavelength">
                    <Item ModelType="GroupProperty" Tag="Distribution" DisplayName="Distribution">
                        <Parameter ParType="ComboProperty" ParRole="0" ParValue="5" ParExt="Cosine;Gate;Gaussian;Log Normal;Lorentz;None;Trapezoid"/>
                        <Item ModelType="DistributionNone" Tag="Item tag" DisplayName="DistributionNone">
                            <Item ModelType="Property" Tag="is initialized" DisplayName="is initialized">
                                <Parameter ParType="bool" ParRole="0" ParValue="0"/>
                            </Item>
                            <Item ModelType="Property" Tag="Mean" DisplayName="Value">
                                <Parameter ParType="double" ParRole="0" ParValue="1.000000000000e-01"/>
                            </Item>
                        </Item>
                    </Item>
                </Item>
            </Item>
            <Item ModelType="GroupProperty" Tag="Detector" DisplayName="Detector">
                <Parameter ParType="ComboProperty" ParRole="0" ParValue="0" ParExt="Rectangular detector;Spherical detector"/>
                <Item ModelType="SphericalDetector" Tag="Item tag" DisplayName="SphericalDetector">
                    <Item ModelType="Vector" Tag="Analyzer direction" DisplayName="Analyzer direction">
                        <Parameter ParType="QString" ParRole="0" ParValue="(0, 0, 0)"/>
                        <Item ModelType="Property" Tag="X" DisplayName="X">
                            <Parameter ParType="double" ParRole="0" ParValue="0.000000000000e+00"/>
                        </Item>
                        <Item ModelType="Property" Tag="Y" DisplayName="Y">
                            <Parameter ParType="double" ParRole="0" ParValue="0.000000000000e+00"/>
                        </Item>
                        <Item ModelType="Property" Tag="Z" DisplayName="Z">
                            <Parameter ParType="double" ParRole="0" ParValue="0.000000000000e+00"/>
                        </Item>
                    </Item>
                    <Item ModelType="Property" Tag="Efficiency" DisplayName="Efficiency">
                        <Parameter ParType="double" ParRole="0" ParValue="0.000000000000e+00"/>
                    </Item>
                    <Item ModelType="Property" Tag="Transmission" DisplayName="Transmission">
                        <Parameter ParType="double" ParRole="0" ParValue="1.000000000000e+00"/>
                    </Item>
                    <Item ModelType="BasicAxis" Tag="Phi axis" DisplayName="Phi axis">
                        <Item ModelType="Property" Tag="Visibility" DisplayName="Visibility">
                            <Parameter ParType="bool" ParRole="0" ParValue="1"/>
                        </Item>
                        <Item ModelType="Property" Tag="Nbins" DisplayName="Nbins">
                            <Parameter ParType="int" ParRole="0" ParValue="100"/>
                        </Item>
                        <Item ModelType="Property" Tag="Min [deg]" DisplayName="Min [deg]">
                            <Parameter ParType="double" ParRole="0" ParValue="-1.000000000000e+00"/>
                        </Item>
                        <Item ModelType="Property" Tag="Max [deg]" DisplayName="Max [deg]">
                            <Parameter ParType="double" ParRole="0" ParValue="1.000000000000e+00"/>
                        </Item>
                        <Item ModelType="Property" Tag="title" DisplayName="title">
                            <Parameter ParType="QString" ParRole="0" ParValue=""/>
                        </Item>
                        <Item ModelType="Property" Tag="Title Visibility" DisplayName="Title Visibility">
                            <Parameter ParType="bool" ParRole="0" ParValue="1"/>
                        </Item>
                    </Item>
                    <Item ModelType="BasicAxis" Tag="Alpha axis" DisplayName="Alpha axis">
                        <Item ModelType="Property" Tag="Visibility" DisplayName="Visibility">
                            <Parameter ParType="bool" ParRole="0" ParValue="1"/>
                        </Item>
                        <Item ModelType="Property" Tag="Nbins" DisplayName="Nbins">
                            <Parameter ParType="int" ParRole="0" ParValue="100"/>
                        </Item>
                        <Item ModelType="Property" Tag="Min [deg]" DisplayName="Min [deg]">
                            <Parameter ParType="double" ParRole="0" ParValue="0.000000000000e+00"/>
                        </Item>
                        <Item ModelType="Property" Tag="Max [deg]" DisplayName="Max [deg]">
                            <Parameter ParType="double" ParRole="0" ParValue="2.000000000000e+00"/>
                        </Item>
                        <Item ModelType="Property" Tag="title" DisplayName="title">
                            <Parameter ParType="QString" ParRole="0" ParValue=""/>
                        </Item>
                        <Item ModelType="Property" Tag="Title Visibility" DisplayName="Title Visibility">
                            <Parameter ParType="bool" ParRole="0" ParValue="1"/>
                        </Item>
                    </Item>
                    <Item ModelType="GroupProperty" Tag="Resolution function" DisplayName="Type">
                        <Parameter ParType="ComboProperty" ParRole="0" ParValue="1" ParExt="2D Gaussian;None"/>
                        <Item ModelType="ResolutionFunctionNone" Tag="Item tag" DisplayName="ResolutionFunctionNone"/>
                    </Item>
                </Item>
                <Item ModelType="RectangularDetector" Tag="Item tag" DisplayName="RectangularDetector">
                    <Item ModelType="Vector" Tag="Analyzer direction" DisplayName="Analyzer direction">
                        <Parameter ParType="QString" ParRole="0" ParValue="(0, 0, 0)"/>
                        <Item ModelType="Property" Tag="X" DisplayName="X">
                            <Parameter ParType="double" ParRole="0" ParValue="0.000000000000e+00"/>
                        </Item>
                        <Item ModelType="Property" Tag="Y" DisplayName="Y">
                            <Parameter ParType="double" ParRole="0" ParValue="0.000000000000e+00"/>
                        </Item>
                        <Item ModelType="Property" Tag="Z" DisplayName="Z">
                            <Parameter ParType="double" ParRole="0" ParValue="0.000000000000e+00"/>
                        </Item>
                    </Item>
                    <Item ModelType="Property" Tag="Efficiency" DisplayName="Efficiency">
                        <Parameter ParType="double" ParRole="0" ParValue="0.000000000000e+00"/>
                    </Item>
                    <Item ModelType="Property" Tag="Transmission" DisplayName="Transmission">
                        <Parameter ParType="double" ParRole="0" ParValue="1.000000000000e+00"/>
                    </Item>
                    <Item ModelType="BasicAxis" Tag="X axis" DisplayName="X axis">
                        <Item ModelType="Property" Tag="Visibility" DisplayName="Visibility">
                            <Parameter ParType="bool" ParRole="0" ParValue="1"/>
                        </Item>
                        <Item ModelType="Property" Tag="Nbins" DisplayName="Nbins">
                            <Parameter ParType="int" ParRole="0" ParValue="500"/>
                        </Item>
                        <Item ModelType="Property" Tag="Min [deg]" DisplayName="Min [deg]">
                            <Parameter ParType="double" ParRole="0" ParValue="0.000000000000e+00"/>
                        </Item>
                        <Item ModelType="Property" Tag="Max [deg]" DisplayName="Width [mm]">
                            <Parameter ParType="double" ParRole="0" ParValue="1.567000000000e+02"/>
                        </Item>
                        <Item ModelType="Property" Tag="title" DisplayName="title">
                            <Parameter ParType="QString" ParRole="0" ParValue=""/>
                        </Item>
                        <Item ModelType="Property" Tag="Title Visibility" DisplayName="Title Visibility">
                            <Parameter ParType="bool" ParRole="0" ParValue="1"/>
                        </Item>
                    </Item>
                    <Item ModelType="BasicAxis" Tag="Y axis" DisplayName="Y axis">
                        <Item ModelType="Property" Tag="Visibility" DisplayName="Visibility">
                            <Parameter ParType="bool" ParRole="0" ParValue="1"/>
                        </Item>
                        <Item ModelType="Property" Tag="Nbins" DisplayName="Nbins">
                            <Parameter ParType="int" ParRole="0" ParValue="500"/>
                        </Item>
                        <Item ModelType="Property" Tag="Min [deg]" DisplayName="Min [deg]">
                            <Parameter ParType="double" ParRole="0" ParValue="0.000000000000e+00"/>
                        </Item>
                        <Item ModelType="Property" Tag="Max [deg]" DisplayName="Height [mm]">
                            <Parameter ParType="double" ParRole="0" ParValue="1.484000000000e+02"/>
                        </Item>
                        <Item ModelType="Property" Tag="title" DisplayName="title">
                            <Parameter ParType="QString" ParRole="0" ParValue=""/>
                        </Item>
                        <Item ModelType="Property" Tag="Title Visibility" DisplayName="Title Visibility">
                            <Parameter ParType="bool" ParRole="0" ParValue="1"/>
                        </Item>
                    </Item>
                    <Item ModelType="Property" Tag="Alignment" DisplayName="Alignment">
                        <Parameter ParType="ComboProperty" ParRole="0" ParValue="1" ParExt="Generic;Perpendicular to direct beam;Perpendicular to sample x-axis;Perpendicular to reflected beam;Perpendicular to reflected beam (dpos)"/>
                    </Item>
                    <Item ModelType="Vector" Tag="Normal vector" DisplayName="Normal vector">
                        <Parameter ParType="QString" ParRole="0" ParValue="(0, 0, 0)"/>
                        <Item ModelType="Property" Tag="X" DisplayName="X">
                            <Parameter ParType="double" ParRole="0" ParValue="1.000000000000e+03"/>
                        </Item>
                        <Item ModelType="Property" Tag="Y" DisplayName="Y">
                            <Parameter ParType="double" ParRole="0" ParValue="0.000000000000e+00"/>
                        </Item>
                        <Item ModelType="Property" Tag="Z" DisplayName="Z">
                            <Parameter ParType="double" ParRole="0" ParValue="0.000000000000e+00"/>
                        </Item>
                    </Item>
                    <Item ModelType="Vector" Tag="Direction vector" DisplayName="Direction vector">
                        <Parameter ParType="QString" ParRole="0" ParValue="(0, 0, 0)"/>
                        <Item ModelType="Property" Tag="X" DisplayName="X">
                            <Parameter ParType="double" ParRole="0" ParValue="0.000000000000e+00"/>
                        </Item>
                        <Item ModelType="Property" Tag="Y" DisplayName="Y">
                            <Parameter ParType="double" ParRole="0" ParValue="-1.000000000000e+00"/>
                        </Item>
                        <Item ModelType="Property" Tag="Z" DisplayName="Z">
                            <Parameter ParType="double" ParRole="0" ParValue="0.000000000000e+00"/>
                        </Item>
                    </Item>
                    <Item ModelType="Property" Tag="u0" DisplayName="u0">
                        <Parameter ParType="double" ParRole="0" ParValue="1.000000000000e+01"/>
                    </Item>
                    <Item ModelType="Property" Tag="v0" DisplayName="v0">
                        <Parameter ParType="double" ParRole="0" ParValue="0.000000000000e+00"/>
                    </Item>
                    <Item ModelType="Property" Tag="u0 (dbeam)" DisplayName="u0 (dbeam)">
                        <Parameter ParType="double" ParRole="0" ParValue="7.835000000000e+01"/>
                    </Item>
                    <Item ModelType="Property" Tag="v0 (dbeam)" DisplayName="v0 (dbeam)">
                        <Parameter ParType="double" ParRole="0" ParValue="-3.200000000000e-01"/>
                    </Item>
                    <Item ModelType="Property" Tag="Distance" DisplayName="Distance">
                        <Parameter ParType="double" ParRole="0" ParValue="7.000000000000e+03"/>
                    </Item>
                    <Item ModelType="GroupProperty" Tag="Resolution function" DisplayName="Type">
                        <Parameter ParType="ComboProperty" ParRole="0" ParValue="1" ParExt="2D Gaussian;None"/>
                        <Item ModelType="ResolutionFunctionNone" Tag="Item tag" DisplayName="ResolutionFunctionNone"/>
                    </Item>
                </Item>
            </Item>
            <Item ModelType="GroupProperty" Tag="Background" DisplayName="Type">
                <Parameter ParType="ComboProperty" ParRole="0" ParValue="1" ParExt="Constant background;None;Poisson noise"/>
                <Item ModelType="NoBackground" Tag="Item tag" DisplayName="NoBackground"/>
            </Item>
        </Item>
    </InstrumentModel>
    <SampleModel Name="DefaultName">
        <Item ModelType="MultiLayer" Tag="rootTag" DisplayName="MultiLayer">
            <Item ModelType="Property" Tag="xpos" DisplayName="xpos">
                <Parameter ParType="double" ParRole="0" ParValue="5.000000000000e+01"/>
            </Item>
            <Item ModelType="Property" Tag="ypos" DisplayName="ypos">
                <Parameter ParType="double" ParRole="0" ParValue="8.000000000000e+02"/>
            </Item>
            <Item ModelType="Property" Tag="Name" DisplayName="Name">
                <Parameter ParType="QString" ParRole="0" ParValue="orientation_x"/>
            </Item>
            <Item ModelType="Property" Tag="CrossCorrelationLength" DisplayName="CrossCorrelationLength">
                <Parameter ParType="double" ParRole="0" ParValue="0.000000000000e+00"/>
            </Item>
            <Item ModelType="Vector" Tag="ExternalField" DisplayName="ExternalField">
                <Parameter ParType="QString" ParRole="0" ParValue="(0, 0, 0)"/>
                <Item ModelType="Property" Tag="X" DisplayName="X">
                    <Parameter ParType="double" ParRole="0" ParValue="0.000000000000e+00"/>
                </Item>
                <Item ModelType="Property" Tag="Y" DisplayName="Y">
                    <Parameter ParType="double" ParRole="0" ParValue="0.000000000000e+00"/>
                </Item>
                <Item ModelType="Property" Tag="Z" DisplayName="Z">
                    <Parameter ParType="double" ParRole="0" ParValue="0.000000000000e+00"/>
                </Item>
            </Item>
            <Item ModelType="Layer" Tag="Layer tag" DisplayName="Layer">
                <Item ModelType="Property" Tag="xpos" DisplayName="xpos">
                    <Parameter ParType="double" ParRole="0" ParValue="1.400000000000e+01"/>
                </Item>
                <Item ModelType="Property" Tag="ypos" DisplayName="ypos">
                    <Parameter ParType="double" ParRole="0" ParValue="0.000000000000e+00"/>
                </Item>
                <Item ModelType="Property" Tag="Thickness" DisplayName="Thickness">
                    <Parameter ParType="double" ParRole="0" ParValue="0.000000000000e+00"/>
                </Item>
                <Item ModelType="Property" Tag="Material" DisplayName="Material">
                    <Parameter ParType="ExternalProperty" ParRole="0" Text="sample_air" Color="#ff6ce184" Identifier="{806491c0-c51a-4ecf-a034-15bcdf70f581}"/>
                </Item>
                <Item ModelType="Property" Tag="Number of slices" DisplayName="Number of slices">
                    <Parameter ParType="int" ParRole="0" ParValue="1"/>
                </Item>
                <Item ModelType="GroupProperty" Tag="Top roughness" DisplayName="Top roughness">
                    <Parameter ParType="ComboProperty" ParRole="0" ParValue="1" ParExt="Basic;No"/>
                    <Item ModelType="LayerZeroRoughness" Tag="Item tag" DisplayName="LayerZeroRoughness"/>
                </Item>
            </Item>
            <Item ModelType="Layer" Tag="Layer tag" DisplayName="Layer">
                <Item ModelType="Property" Tag="xpos" DisplayName="xpos">
                    <Parameter ParType="double" ParRole="0" ParValue="1.400000000000e+01"/>
                </Item>
                <Item ModelType="Property" Tag="ypos" DisplayName="ypos">
                    <Parameter ParType="double" ParRole="0" ParValue="3.000000000000e+01"/>
                </Item>
                <Item ModelType="Property" Tag="Thickness" DisplayName="Thickness">
                    <Parameter ParType="double" ParRole="0" ParValue="0.000000000000e+00"/>
                </Item>
                <Item ModelType="Property" Tag="Material" DisplayName="Material">
                    <Parameter ParType="ExternalProperty" ParRole="0" Text="sample_silicon" Color="#fff14990" Identifier="{0ad14b70-743c-46d0-8111-9e77fff90d92}"/>
                </Item>
                <Item ModelType="Property" Tag="Number of slices" DisplayName="Number of slices">
                    <Parameter ParType="int" ParRole="0" ParValue="1"/>
                </Item>
                <Item ModelType="GroupProperty" Tag="Top roughness" DisplayName="Top roughness">
                    <Parameter ParType="ComboProperty" ParRole="0" ParValue="1" ParExt="Basic;No"/>
                    <Item ModelType="LayerZeroRoughness" Tag="Item tag" DisplayName="LayerZeroRoughness"/>
                </Item>
                <Item ModelType="ParticleLayout" Tag="Layout tag" DisplayName="ParticleLayout">
                    <Item ModelType="Property" Tag="xpos" DisplayName="xpos">
                        <Parameter ParType="double" ParRole="0" ParValue="-7.200000000000e+01"/>
                    </Item>
                    <Item ModelType="Property" Tag="ypos" DisplayName="ypos">
                        <Parameter ParType="double" ParRole="0" ParValue="8.600000000000e+02"/>
                    </Item>
                    <Item ModelType="Property" Tag="TotalParticleDensity" DisplayName="TotalParticleDensity">
                        <Parameter ParType="double" ParRole="0" ParValue="3.846153846154e-06"/>
                    </Item>
                    <Item ModelType="Property" Tag="Weight" DisplayName="Weight">
                        <Parameter ParType="double" ParRole="0" ParValue="1.000000000000e+00"/>
                    </Item>
                    <Item ModelType="ParticleComposition" Tag="Particle Tag" DisplayName="ParticleComposition">
                        <Item ModelType="Property" Tag="xpos" DisplayName="xpos">
                            <Parameter ParType="double" ParRole="0" ParValue="-2.220000000000e+02"/>
                        </Item>
                        <Item ModelType="Property" Tag="ypos" DisplayName="ypos">
                            <Parameter ParType="double" ParRole="0" ParValue="8.600000000000e+02"/>
                        </Item>
                        <Item ModelType="Property" Tag="Abundance" DisplayName="Abundance">
                            <Parameter ParType="double" ParRole="0" ParValue="1.000000000000e+00"/>
                        </Item>
                        <Item ModelType="Vector" Tag="Position Offset" DisplayName="Position Offset">
                            <Parameter ParType="QString" ParRole="0" ParValue="(0, 0, 0)"/>
                            <Item ModelType="Property" Tag="X" DisplayName="X">
                                <Parameter ParType="double" ParRole="0" ParValue="0.000000000000e+00"/>
                            </Item>
                            <Item ModelType="Property" Tag="Y" DisplayName="Y">
                                <Parameter ParType="double" ParRole="0" ParValue="0.000000000000e+00"/>
                            </Item>
                            <Item ModelType="Property" Tag="Z" DisplayName="Z">
                                <Parameter ParType="double" ParRole="0" ParValue="0.000000000000e+00"/>
                            </Item>
                        </Item>
                        <Item ModelType="ParticleCoreShell" Tag="Particle Tag" DisplayName="ParticleCoreShell">
                            <Item ModelType="Property" Tag="xpos" DisplayName="xpos">
                                <Parameter ParType="double" ParRole="0" ParValue="-3.720000000000e+02"/>
                            </Item>
                            <Item ModelType="Property" Tag="ypos" DisplayName="ypos">
                                <Parameter ParType="double" ParRole="0" ParValue="8.600000000000e+02"/>
                            </Item>
                            <Item ModelType="Property" Tag="Abundance" DisplayName="Abundance">
                                <Parameter ParType="double" ParRole="0" ParValue="1.000000000000e+00"/>
                            </Item>
                            <Item ModelType="Vector" Tag="Position Offset" DisplayName="Position Offset">
                                <Parameter ParType="QString" ParRole="0" ParValue="(0, 0, 0)"/>
                                <Item ModelType="Property" Tag="X" DisplayName="X">
                                    <Parameter ParType="double" ParRole="0" ParValue="0.000000000000e+00"/>
                                </Item>
                                <Item ModelType="Property" Tag="Y" DisplayName="Y">
                                    <Parameter ParType="double" ParRole="0" ParValue="0.000000000000e+00"/>
                                </Item>
                                <Item ModelType="Property" Tag="Z" DisplayName="Z">
                                    <Parameter ParType="double" ParRole="0" ParValue="0.000000000000e+00"/>
                                </Item>
                            </Item>
                            <Item ModelType="Particle" Tag="Core Tag" DisplayName="Particle">
                                <Item ModelType="Property" Tag="xpos" DisplayName="xpos">
                                    <Parameter ParType="double" ParRole="0" ParValue="-5.220000000000e+02"/>
                                </Item>
                                <Item ModelType="Property" Tag="ypos" DisplayName="ypos">
                                    <Parameter ParType="double" ParRole="0" ParValue="8.600000000000e+02"/>
                                </Item>
                                <Item ModelType="GroupProperty" Tag="Form Factor" DisplayName="Form Factor">
                                    <Parameter ParType="ComboProperty" ParRole="0" ParValue="9" ParExt="Aniso Pyramid;Box;Cone;Cone6;Cuboctahedron;Cylinder;Dodecahedron;Dot;Ellipsoidal Cylinder;Full Sphere;Full Spheroid;Hemi Ellipsoid;Icosahedron;Prism3;Prism6;Pyramid;Ripple1;Ripple2;Tetrahedron;Truncated Cube;Truncated Sphere;Truncated Spheroid"/>
                                    <Item ModelType="Cylinder" Tag="Item tag" DisplayName="Cylinder">
                                        <Item ModelType="Property" Tag="Radius" DisplayName="Radius">
                                            <Parameter ParType="double" ParRole="0" ParValue="8.000000000000e+00"/>
                                        </Item>
                                        <Item ModelType="Property" Tag="Height" DisplayName="Height">
                                            <Parameter ParType="double" ParRole="0" ParValue="1.600000000000e+01"/>
                                        </Item>
                                    </Item>
                                    <Item ModelType="FullSphere" Tag="Item tag" DisplayName="FullSphere">
                                        <Item ModelType="Property" Tag="Radius" DisplayName="Radius">
                                            <Parameter ParType="double" ParRole="0" ParValue="2.500000000000e+01"/>
                                        </Item>
                                    </Item>
                                </Item>
                                <Item ModelType="Property" Tag="Material" DisplayName="Material">
                                    <Parameter ParType="ExternalProperty" ParRole="0" Text="sample_gold" Color="#ffe9bbf1" Identifier="{43399bc1-26fa-420b-bcfe-77f84d8b5874}"/>
                                </Item>
                                <Item ModelType="Property" Tag="Abundance" DisplayName="Abundance">
                                    <Parameter ParType="double" ParRole="0" ParValue="1.000000000000e+00"/>
                                </Item>
                                <Item ModelType="Vector" Tag="Position Offset" DisplayName="Position Offset">
                                    <Parameter ParType="QString" ParRole="0" ParValue="(0, 0, 75)"/>
                                    <Item ModelType="Property" Tag="X" DisplayName="X">
                                        <Parameter ParType="double" ParRole="0" ParValue="0.000000000000e+00"/>
                                    </Item>
                                    <Item ModelType="Property" Tag="Y" DisplayName="Y">
                                        <Parameter ParType="double" ParRole="0" ParValue="0.000000000000e+00"/>
                                    </Item>
                                    <Item ModelType="Property" Tag="Z" DisplayName="Z">
                                        <Parameter ParType="double" ParRole="0" ParValue="7.500000000000e+01"/>
                                    </Item>
                                </Item>
                            </Item>
                            <Item ModelType="Particle" Tag="Shell Tag" DisplayName="Particle">
                                <Item ModelType="Property" Tag="xpos" DisplayName="xpos">
                                    <Parameter ParType="double" ParRole="0" ParValue="-5.220000000000e+02"/>
                                </Item>
                                <Item ModelType="Property" Tag="ypos" DisplayName="ypos">
                                    <Parameter ParType="double" ParRole="0" ParValue="1.010000000000e+03"/>
                                </Item>
                                <Item ModelType="GroupProperty" Tag="Form Factor" DisplayName="Form Factor">
                                    <Parameter ParType="ComboProperty" ParRole="0" ParValue="9" ParExt="Aniso Pyramid;Box;Cone;Cone6;Cuboctahedron;Cylinder;Dodecahedron;Dot;Ellipsoidal Cylinder;Full Sphere;Full Spheroid;Hemi Ellipsoid;Icosahedron;Prism3;Prism6;Pyramid;Ripple1;Ripple2;Tetrahedron;Truncated Cube;Truncated Sphere;Truncated Spheroid"/>
                                    <Item ModelType="Cylinder" Tag="Item tag" DisplayName="Cylinder">
                                        <Item ModelType="Property" Tag="Radius" DisplayName="Radius">
                                            <Parameter ParType="double" ParRole="0" ParValue="8.000000000000e+00"/>
                                        </Item>
                                        <Item ModelType="Property" Tag="Height" DisplayName="Height">
                                            <Parameter ParType="double" ParRole="0" ParValue="1.600000000000e+01"/>
                                        </Item>
                                    </Item>
                                    <Item ModelType="FullSphere" Tag="Item tag" DisplayName="FullSphere">
                                        <Item ModelType="Property" Tag="Radius" DisplayName="Radius">
                                            <Parameter ParType="double" ParRole="0" ParValue="1.000000000000e+02"/>
                                        </Item>
                                    </Item>
                                </Item>
                                <Item ModelType="Property" Tag="Material" DisplayName="Material">
                                    <Parameter ParType="ExternalProperty" ParRole="0" Text="sample_air" Color="#ff6ce184" Identifier="{806491c0-c51a-4ecf-a034-15bcdf70f581}"/>
                                </Item>
                                <Item ModelType="Property" Tag="Abundance" DisplayName="Abundance">
                                    <Parameter ParType="double" ParRole="0" ParValue="1.000000000000e+00"/>
                                </Item>
                                <Item ModelType="Vector" Tag="Position Offset" DisplayName="Position Offset">
                                    <Parameter ParType="QString" ParRole="0" ParValue="(0, 0, 0)"/>
                                    <Item ModelType="Property" Tag="X" DisplayName="X">
                                        <Parameter ParType="double" ParRole="0" ParValue="0.000000000000e+00"/>
                                    </Item>
                                    <Item ModelType="Property" Tag="Y" DisplayName="Y">
                                        <Parameter ParType="double" ParRole="0" ParValue="0.000000000000e+00"/>
                                    </Item>
                                    <Item ModelType="Property" Tag="Z" DisplayName="Z">
                                        <Parameter ParType="double" ParRole="0" ParValue="0.000000000000e+00"/>
                                    </Item>
                                </Item>
                            </Item>
                        </Item>
                        <Item ModelType="ParticleCoreShell" Tag="Particle Tag" DisplayName="ParticleCoreShell">
                            <Item ModelType="Property" Tag="xpos" DisplayName="xpos">
                                <Parameter ParType="double" ParRole="0" ParValue="-3.720000000000e+02"/>
                            </Item>
                            <Item ModelType="Property" Tag="ypos" DisplayName="ypos">
                                <Parameter ParType="double" ParRole="0" ParValue="1.010000000000e+03"/>
                            </Item>
                            <Item ModelType="Property" Tag="Abundance" DisplayName="Abundance">
                                <Parameter ParType="double" ParRole="0" ParValue="1.000000000000e+00"/>
                            </Item>
                            <Item ModelType="Vector" Tag="Position Offset" DisplayName="Position Offset">
                                <Parameter ParType="QString" ParRole="0" ParValue="(0, 200, 0)"/>
                                <Item ModelType="Property" Tag="X" DisplayName="X">
                                    <Parameter ParType="double" ParRole="0" ParValue="0.000000000000e+00"/>
                                </Item>
                                <Item ModelType="Property" Tag="Y" DisplayName="Y">
                                    <Parameter ParType="double" ParRole="0" ParValue="2.000000000000e+02"/>
                                </Item>
                                <Item ModelType="Property" Tag="Z" DisplayName="Z">
                                    <Parameter ParType="double" ParRole="0" ParValue="0.000000000000e+00"/>
                                </Item>
                            </Item>
                            <Item ModelType="Particle" Tag="Core Tag" DisplayName="Particle">
                                <Item ModelType="Property" Tag="xpos" DisplayName="xpos">
                                    <Parameter ParType="double" ParRole="0" ParValue="-5.220000000000e+02"/>
                                </Item>
                                <Item ModelType="Property" Tag="ypos" DisplayName="ypos">
                                    <Parameter ParType="double" ParRole="0" ParValue="1.010000000000e+03"/>
                                </Item>
                                <Item ModelType="GroupProperty" Tag="Form Factor" DisplayName="Form Factor">
                                    <Parameter ParType="ComboProperty" ParRole="0" ParValue="9" ParExt="Aniso Pyramid;Box;Cone;Cone6;Cuboctahedron;Cylinder;Dodecahedron;Dot;Ellipsoidal Cylinder;Full Sphere;Full Spheroid;Hemi Ellipsoid;Icosahedron;Prism3;Prism6;Pyramid;Ripple1;Ripple2;Tetrahedron;Truncated Cube;Truncated Sphere;Truncated Spheroid"/>
                                    <Item ModelType="Cylinder" Tag="Item tag" DisplayName="Cylinder">
                                        <Item ModelType="Property" Tag="Radius" DisplayName="Radius">
                                            <Parameter ParType="double" ParRole="0" ParValue="8.000000000000e+00"/>
                                        </Item>
                                        <Item ModelType="Property" Tag="Height" DisplayName="Height">
                                            <Parameter ParType="double" ParRole="0" ParValue="1.600000000000e+01"/>
                                        </Item>
                                    </Item>
                                    <Item ModelType="FullSphere" Tag="Item tag" DisplayName="FullSphere">
                                        <Item ModelType="Property" Tag="Radius" DisplayName="Radius">
                                            <Parameter ParType="double" ParRole="0" ParValue="2.500000000000e+01"/>
                                        </Item>
                                    </Item>
                                </Item>
                                <Item ModelType="Property" Tag="Material" DisplayName="Material">
                                    <Parameter ParType="ExternalProperty" ParRole="0" Text="sample_gold" Color="#ffe9bbf1" Identifier="{43399bc1-26fa-420b-bcfe-77f84d8b5874}"/>
                                </Item>
                                <Item ModelType="Property" Tag="Abundance" DisplayName="Abundance">
                                    <Parameter ParType="double" ParRole="0" ParValue="1.000000000000e+00"/>
                                </Item>
                                <Item ModelType="Vector" Tag="Position Offset" DisplayName="Position Offset">
                                    <Parameter ParType="QString" ParRole="0" ParValue="(0, 0, 75)"/>
                                    <Item ModelType="Property" Tag="X" DisplayName="X">
                                        <Parameter ParType="double" ParRole="0" ParValue="0.000000000000e+00"/>
                                    </Item>
                                    <Item ModelType="Property" Tag="Y" DisplayName="Y">
                                        <Parameter ParType="double" ParRole="0" ParValue="0.000000000000e+00"/>
                                    </Item>
                                    <Item ModelType="Property" Tag="Z" DisplayName="Z">
                                        <Parameter ParType="double" ParRole="0" ParValue="7.500000000000e+01"/>
                                    </Item>
                                </Item>
                            </Item>
                            <Item ModelType="Particle" Tag="Shell Tag" DisplayName="Particle">
                                <Item ModelType="Property" Tag="xpos" DisplayName="xpos">
                                    <Parameter ParType="double" ParRole="0" ParValue="-5.220000000000e+02"/>
                                </Item>
                                <Item ModelType="Property" Tag="ypos" DisplayName="ypos">
                                    <Parameter ParType="double" ParRole="0" ParValue="1.160000000000e+03"/>
                                </Item>
                                <Item ModelType="GroupProperty" Tag="Form Factor" DisplayName="Form Factor">
                                    <Parameter ParType="ComboProperty" ParRole="0" ParValue="9" ParExt="Aniso Pyramid;Box;Cone;Cone6;Cuboctahedron;Cylinder;Dodecahedron;Dot;Ellipsoidal Cylinder;Full Sphere;Full Spheroid;Hemi Ellipsoid;Icosahedron;Prism3;Prism6;Pyramid;Ripple1;Ripple2;Tetrahedron;Truncated Cube;Truncated Sphere;Truncated Spheroid"/>
                                    <Item ModelType="Cylinder" Tag="Item tag" DisplayName="Cylinder">
                                        <Item ModelType="Property" Tag="Radius" DisplayName="Radius">
                                            <Parameter ParType="double" ParRole="0" ParValue="8.000000000000e+00"/>
                                        </Item>
                                        <Item ModelType="Property" Tag="Height" DisplayName="Height">
                                            <Parameter ParType="double" ParRole="0" ParValue="1.600000000000e+01"/>
                                        </Item>
                                    </Item>
                                    <Item ModelType="FullSphere" Tag="Item tag" DisplayName="FullSphere">
                                        <Item ModelType="Property" Tag="Radius" DisplayName="Radius">
                                            <Parameter ParType="double" ParRole="0" ParValue="1.000000000000e+02"/>
                                        </Item>
                                    </Item>
                                </Item>
                                <Item ModelType="Property" Tag="Material" DisplayName="Material">
                                    <Parameter ParType="ExternalProperty" ParRole="0" Text="sample_air" Color="#ff6ce184" Identifier="{806491c0-c51a-4ecf-a034-15bcdf70f581}"/>
                                </Item>
                                <Item ModelType="Property" Tag="Abundance" DisplayName="Abundance">
                                    <Parameter ParType="double" ParRole="0" ParValue="1.000000000000e+00"/>
                                </Item>
                                <Item ModelType="Vector" Tag="Position Offset" DisplayName="Position Offset">
                                    <Parameter ParType="QString" ParRole="0" ParValue="(0, 0, 0)"/>
                                    <Item ModelType="Property" Tag="X" DisplayName="X">
                                        <Parameter ParType="double" ParRole="0" ParValue="0.000000000000e+00"/>
                                    </Item>
                                    <Item ModelType="Property" Tag="Y" DisplayName="Y">
                                        <Parameter ParType="double" ParRole="0" ParValue="0.000000000000e+00"/>
                                    </Item>
                                    <Item ModelType="Property" Tag="Z" DisplayName="Z">
                                        <Parameter ParType="double" ParRole="0" ParValue="0.000000000000e+00"/>
                                    </Item>
                                </Item>
                            </Item>
                        </Item>
                        <Item ModelType="ParticleCoreShell" Tag="Particle Tag" DisplayName="ParticleCoreShell">
                            <Item ModelType="Property" Tag="xpos" DisplayName="xpos">
                                <Parameter ParType="double" ParRole="0" ParValue="-3.720000000000e+02"/>
                            </Item>
                            <Item ModelType="Property" Tag="ypos" DisplayName="ypos">
                                <Parameter ParType="double" ParRole="0" ParValue="1.160000000000e+03"/>
                            </Item>
                            <Item ModelType="Property" Tag="Abundance" DisplayName="Abundance">
                                <Parameter ParType="double" ParRole="0" ParValue="1.000000000000e+00"/>
                            </Item>
                            <Item ModelType="Vector" Tag="Position Offset" DisplayName="Position Offset">
                                <Parameter ParType="QString" ParRole="0" ParValue="(200, 0, 0)"/>
                                <Item ModelType="Property" Tag="X" DisplayName="X">
                                    <Parameter ParType="double" ParRole="0" ParValue="2.000000000000e+02"/>
                                </Item>
                                <Item ModelType="Property" Tag="Y" DisplayName="Y">
                                    <Parameter ParType="double" ParRole="0" ParValue="0.000000000000e+00"/>
                                </Item>
                                <Item ModelType="Property" Tag="Z" DisplayName="Z">
                                    <Parameter ParType="double" ParRole="0" ParValue="0.000000000000e+00"/>
                                </Item>
                            </Item>
                            <Item ModelType="Particle" Tag="Core Tag" DisplayName="Particle">
                                <Item ModelType="Property" Tag="xpos" DisplayName="xpos">
                                    <Parameter ParType="double" ParRole="0" ParValue="-5.220000000000e+02"/>
                                </Item>
                                <Item ModelType="Property" Tag="ypos" DisplayName="ypos">
                                    <Parameter ParType="double" ParRole="0" ParValue="1.160000000000e+03"/>
                                </Item>
                                <Item ModelType="GroupProperty" Tag="Form Factor" DisplayName="Form Factor">
                                    <Parameter ParType="ComboProperty" ParRole="0" ParValue="9" ParExt="Aniso Pyramid;Box;Cone;Cone6;Cuboctahedron;Cylinder;Dodecahedron;Dot;Ellipsoidal Cylinder;Full Sphere;Full Spheroid;Hemi Ellipsoid;Icosahedron;Prism3;Prism6;Pyramid;Ripple1;Ripple2;Tetrahedron;Truncated Cube;Truncated Sphere;Truncated Spheroid"/>
                                    <Item ModelType="Cylinder" Tag="Item tag" DisplayName="Cylinder">
                                        <Item ModelType="Property" Tag="Radius" DisplayName="Radius">
                                            <Parameter ParType="double" ParRole="0" ParValue="8.000000000000e+00"/>
                                        </Item>
                                        <Item ModelType="Property" Tag="Height" DisplayName="Height">
                                            <Parameter ParType="double" ParRole="0" ParValue="1.600000000000e+01"/>
                                        </Item>
                                    </Item>
                                    <Item ModelType="FullSphere" Tag="Item tag" DisplayName="FullSphere">
                                        <Item ModelType="Property" Tag="Radius" DisplayName="Radius">
                                            <Parameter ParType="double" ParRole="0" ParValue="2.500000000000e+01"/>
                                        </Item>
                                    </Item>
                                </Item>
                                <Item ModelType="Property" Tag="Material" DisplayName="Material">
                                    <Parameter ParType="ExternalProperty" ParRole="0" Text="sample_gold" Color="#ffe9bbf1" Identifier="{43399bc1-26fa-420b-bcfe-77f84d8b5874}"/>
                                </Item>
                                <Item ModelType="Property" Tag="Abundance" DisplayName="Abundance">
                                    <Parameter ParType="double" ParRole="0" ParValue="1.000000000000e+00"/>
                                </Item>
                                <Item ModelType="Vector" Tag="Position Offset" DisplayName="Position Offset">
                                    <Parameter ParType="QString" ParRole="0" ParValue="(0, 0, 75)"/>
                                    <Item ModelType="Property" Tag="X" DisplayName="X">
                                        <Parameter ParType="double" ParRole="0" ParValue="0.000000000000e+00"/>
                                    </Item>
                                    <Item ModelType="Property" Tag="Y" DisplayName="Y">
                                        <Parameter ParType="double" ParRole="0" ParValue="0.000000000000e+00"/>
                                    </Item>
                                    <Item ModelType="Property" Tag="Z" DisplayName="Z">
                                        <Parameter ParType="double" ParRole="0" ParValue="7.500000000000e+01"/>
                                    </Item>
                                </Item>
                            </Item>
                            <Item ModelType="Particle" Tag="Shell Tag" DisplayName="Particle">
                                <Item ModelType="Property" Tag="xpos" DisplayName="xpos">
                                    <Parameter ParType="double" ParRole="0" ParValue="-5.220000000000e+02"/>
                                </Item>
                                <Item ModelType="Property" Tag="ypos" DisplayName="ypos">
                                    <Parameter ParType="double" ParRole="0" ParValue="1.310000000000e+03"/>
                                </Item>
                                <Item ModelType="GroupProperty" Tag="Form Factor" DisplayName="Form Factor">
                                    <Parameter ParType="ComboProperty" ParRole="0" ParValue="9" ParExt="Aniso Pyramid;Box;Cone;Cone6;Cuboctahedron;Cylinder;Dodecahedron;Dot;Ellipsoidal Cylinder;Full Sphere;Full Spheroid;Hemi Ellipsoid;Icosahedron;Prism3;Prism6;Pyramid;Ripple1;Ripple2;Tetrahedron;Truncated Cube;Truncated Sphere;Truncated Spheroid"/>
                                    <Item ModelType="Cylinder" Tag="Item tag" DisplayName="Cylinder">
                                        <Item ModelType="Property" Tag="Radius" DisplayName="Radius">
                                            <Parameter ParType="double" ParRole="0" ParValue="8.000000000000e+00"/>
                                        </Item>
                                        <Item ModelType="Property" Tag="Height" DisplayName="Height">
                                            <Parameter ParType="double" ParRole="0" ParValue="1.600000000000e+01"/>
                                        </Item>
                                    </Item>
                                    <Item ModelType="FullSphere" Tag="Item tag" DisplayName="FullSphere">
                                        <Item ModelType="Property" Tag="Radius" DisplayName="Radius">
                                            <Parameter ParType="double" ParRole="0" ParValue="1.000000000000e+02"/>
                                        </Item>
                                    </Item>
                                </Item>
                                <Item ModelType="Property" Tag="Material" DisplayName="Material">
                                    <Parameter ParType="ExternalProperty" ParRole="0" Text="sample_air" Color="#ff6ce184" Identifier="{806491c0-c51a-4ecf-a034-15bcdf70f581}"/>
                                </Item>
                                <Item ModelType="Property" Tag="Abundance" DisplayName="Abundance">
                                    <Parameter ParType="double" ParRole="0" ParValue="1.000000000000e+00"/>
                                </Item>
                                <Item ModelType="Vector" Tag="Position Offset" DisplayName="Position Offset">
                                    <Parameter ParType="QString" ParRole="0" ParValue="(0, 0, 0)"/>
                                    <Item ModelType="Property" Tag="X" DisplayName="X">
                                        <Parameter ParType="double" ParRole="0" ParValue="0.000000000000e+00"/>
                                    </Item>
                                    <Item ModelType="Property" Tag="Y" DisplayName="Y">
                                        <Parameter ParType="double" ParRole="0" ParValue="0.000000000000e+00"/>
                                    </Item>
                                    <Item ModelType="Property" Tag="Z" DisplayName="Z">
                                        <Parameter ParType="double" ParRole="0" ParValue="0.000000000000e+00"/>
                                    </Item>
                                </Item>
                            </Item>
                        </Item>
                        <Item ModelType="ParticleCoreShell" Tag="Particle Tag" DisplayName="ParticleCoreShell">
                            <Item ModelType="Property" Tag="xpos" DisplayName="xpos">
                                <Parameter ParType="double" ParRole="0" ParValue="-3.720000000000e+02"/>
                            </Item>
                            <Item ModelType="Property" Tag="ypos" DisplayName="ypos">
                                <Parameter ParType="double" ParRole="0" ParValue="1.310000000000e+03"/>
                            </Item>
                            <Item ModelType="Property" Tag="Abundance" DisplayName="Abundance">
                                <Parameter ParType="double" ParRole="0" ParValue="1.000000000000e+00"/>
                            </Item>
                            <Item ModelType="Vector" Tag="Position Offset" DisplayName="Position Offset">
                                <Parameter ParType="QString" ParRole="0" ParValue="(200, 200, 0)"/>
                                <Item ModelType="Property" Tag="X" DisplayName="X">
                                    <Parameter ParType="double" ParRole="0" ParValue="2.000000000000e+02"/>
                                </Item>
                                <Item ModelType="Property" Tag="Y" DisplayName="Y">
                                    <Parameter ParType="double" ParRole="0" ParValue="2.000000000000e+02"/>
                                </Item>
                                <Item ModelType="Property" Tag="Z" DisplayName="Z">
                                    <Parameter ParType="double" ParRole="0" ParValue="0.000000000000e+00"/>
                                </Item>
                            </Item>
                            <Item ModelType="Particle" Tag="Core Tag" DisplayName="Particle">
                                <Item ModelType="Property" Tag="xpos" DisplayName="xpos">
                                    <Parameter ParType="double" ParRole="0" ParValue="-5.220000000000e+02"/>
                                </Item>
                                <Item ModelType="Property" Tag="ypos" DisplayName="ypos">
                                    <Parameter ParType="double" ParRole="0" ParValue="1.310000000000e+03"/>
                                </Item>
                                <Item ModelType="GroupProperty" Tag="Form Factor" DisplayName="Form Factor">
                                    <Parameter ParType="ComboProperty" ParRole="0" ParValue="9" ParExt="Aniso Pyramid;Box;Cone;Cone6;Cuboctahedron;Cylinder;Dodecahedron;Dot;Ellipsoidal Cylinder;Full Sphere;Full Spheroid;Hemi Ellipsoid;Icosahedron;Prism3;Prism6;Pyramid;Ripple1;Ripple2;Tetrahedron;Truncated Cube;Truncated Sphere;Truncated Spheroid"/>
                                    <Item ModelType="Cylinder" Tag="Item tag" DisplayName="Cylinder">
                                        <Item ModelType="Property" Tag="Radius" DisplayName="Radius">
                                            <Parameter ParType="double" ParRole="0" ParValue="8.000000000000e+00"/>
                                        </Item>
                                        <Item ModelType="Property" Tag="Height" DisplayName="Height">
                                            <Parameter ParType="double" ParRole="0" ParValue="1.600000000000e+01"/>
                                        </Item>
                                    </Item>
                                    <Item ModelType="FullSphere" Tag="Item tag" DisplayName="FullSphere">
                                        <Item ModelType="Property" Tag="Radius" DisplayName="Radius">
                                            <Parameter ParType="double" ParRole="0" ParValue="2.500000000000e+01"/>
                                        </Item>
                                    </Item>
                                </Item>
                                <Item ModelType="Property" Tag="Material" DisplayName="Material">
                                    <Parameter ParType="ExternalProperty" ParRole="0" Text="sample_gold" Color="#ffe9bbf1" Identifier="{43399bc1-26fa-420b-bcfe-77f84d8b5874}"/>
                                </Item>
                                <Item ModelType="Property" Tag="Abundance" DisplayName="Abundance">
                                    <Parameter ParType="double" ParRole="0" ParValue="1.000000000000e+00"/>
                                </Item>
                                <Item ModelType="Vector" Tag="Position Offset" DisplayName="Position Offset">
                                    <Parameter ParType="QString" ParRole="0" ParValue="(0, 0, 75)"/>
                                    <Item ModelType="Property" Tag="X" DisplayName="X">
                                        <Parameter ParType="double" ParRole="0" ParValue="0.000000000000e+00"/>
                                    </Item>
                                    <Item ModelType="Property" Tag="Y" DisplayName="Y">
                                        <Parameter ParType="double" ParRole="0" ParValue="0.000000000000e+00"/>
                                    </Item>
                                    <Item ModelType="Property" Tag="Z" DisplayName="Z">
                                        <Parameter ParType="double" ParRole="0" ParValue="7.500000000000e+01"/>
                                    </Item>
                                </Item>
                            </Item>
                            <Item ModelType="Particle" Tag="Shell Tag" DisplayName="Particle">
                                <Item ModelType="Property" Tag="xpos" DisplayName="xpos">
                                    <Parameter ParType="double" ParRole="0" ParValue="-5.220000000000e+02"/>
                                </Item>
                                <Item ModelType="Property" Tag="ypos" DisplayName="ypos">
                                    <Parameter ParType="double" ParRole="0" ParValue="1.460000000000e+03"/>
                                </Item>
                                <Item ModelType="GroupProperty" Tag="Form Factor" DisplayName="Form Factor">
                                    <Parameter ParType="ComboProperty" ParRole="0" ParValue="9" ParExt="Aniso Pyramid;Box;Cone;Cone6;Cuboctahedron;Cylinder;Dodecahedron;Dot;Ellipsoidal Cylinder;Full Sphere;Full Spheroid;Hemi Ellipsoid;Icosahedron;Prism3;Prism6;Pyramid;Ripple1;Ripple2;Tetrahedron;Truncated Cube;Truncated Sphere;Truncated Spheroid"/>
                                    <Item ModelType="Cylinder" Tag="Item tag" DisplayName="Cylinder">
                                        <Item ModelType="Property" Tag="Radius" DisplayName="Radius">
                                            <Parameter ParType="double" ParRole="0" ParValue="8.000000000000e+00"/>
                                        </Item>
                                        <Item ModelType="Property" Tag="Height" DisplayName="Height">
                                            <Parameter ParType="double" ParRole="0" ParValue="1.600000000000e+01"/>
                                        </Item>
                                    </Item>
                                    <Item ModelType="FullSphere" Tag="Item tag" DisplayName="FullSphere">
                                        <Item ModelType="Property" Tag="Radius" DisplayName="Radius">
                                            <Parameter ParType="double" ParRole="0" ParValue="1.000000000000e+02"/>
                                        </Item>
                                    </Item>
                                </Item>
                                <Item ModelType="Property" Tag="Material" DisplayName="Material">
                                    <Parameter ParType="ExternalProperty" ParRole="0" Text="sample_air" Color="#ff6ce184" Identifier="{806491c0-c51a-4ecf-a034-15bcdf70f581}"/>
                                </Item>
                                <Item ModelType="Property" Tag="Abundance" DisplayName="Abundance">
                                    <Parameter ParType="double" ParRole="0" ParValue="1.000000000000e+00"/>
                                </Item>
                                <Item ModelType="Vector" Tag="Position Offset" DisplayName="Position Offset">
                                    <Parameter ParType="QString" ParRole="0" ParValue="(0, 0, 0)"/>
                                    <Item ModelType="Property" Tag="X" DisplayName="X">
                                        <Parameter ParType="double" ParRole="0" ParValue="0.000000000000e+00"/>
                                    </Item>
                                    <Item ModelType="Property" Tag="Y" DisplayName="Y">
                                        <Parameter ParType="double" ParRole="0" ParValue="0.000000000000e+00"/>
                                    </Item>
                                    <Item ModelType="Property" Tag="Z" DisplayName="Z">
                                        <Parameter ParType="double" ParRole="0" ParValue="0.000000000000e+00"/>
                                    </Item>
                                </Item>
                            </Item>
                        </Item>
                        <Item ModelType="ParticleCoreShell" Tag="Particle Tag" DisplayName="ParticleCoreShell">
                            <Item ModelType="Property" Tag="xpos" DisplayName="xpos">
                                <Parameter ParType="double" ParRole="0" ParValue="-3.720000000000e+02"/>
                            </Item>
                            <Item ModelType="Property" Tag="ypos" DisplayName="ypos">
                                <Parameter ParType="double" ParRole="0" ParValue="1.460000000000e+03"/>
                            </Item>
                            <Item ModelType="Property" Tag="Abundance" DisplayName="Abundance">
                                <Parameter ParType="double" ParRole="0" ParValue="1.000000000000e+00"/>
                            </Item>
                            <Item ModelType="Vector" Tag="Position Offset" DisplayName="Position Offset">
                                <Parameter ParType="QString" ParRole="0" ParValue="(0, 0, 50)"/>
                                <Item ModelType="Property" Tag="X" DisplayName="X">
                                    <Parameter ParType="double" ParRole="0" ParValue="0.000000000000e+00"/>
                                </Item>
                                <Item ModelType="Property" Tag="Y" DisplayName="Y">
                                    <Parameter ParType="double" ParRole="0" ParValue="0.000000000000e+00"/>
                                </Item>
                                <Item ModelType="Property" Tag="Z" DisplayName="Z">
                                    <Parameter ParType="double" ParRole="0" ParValue="5.000000000000e+01"/>
                                </Item>
                            </Item>
                            <Item ModelType="Particle" Tag="Core Tag" DisplayName="Particle">
                                <Item ModelType="Property" Tag="xpos" DisplayName="xpos">
                                    <Parameter ParType="double" ParRole="0" ParValue="-5.220000000000e+02"/>
                                </Item>
                                <Item ModelType="Property" Tag="ypos" DisplayName="ypos">
                                    <Parameter ParType="double" ParRole="0" ParValue="1.460000000000e+03"/>
                                </Item>
                                <Item ModelType="GroupProperty" Tag="Form Factor" DisplayName="Form Factor">
                                    <Parameter ParType="ComboProperty" ParRole="0" ParValue="9" ParExt="Aniso Pyramid;Box;Cone;Cone6;Cuboctahedron;Cylinder;Dodecahedron;Dot;Ellipsoidal Cylinder;Full Sphere;Full Spheroid;Hemi Ellipsoid;Icosahedron;Prism3;Prism6;Pyramid;Ripple1;Ripple2;Tetrahedron;Truncated Cube;Truncated Sphere;Truncated Spheroid"/>
                                    <Item ModelType="Cylinder" Tag="Item tag" DisplayName="Cylinder">
                                        <Item ModelType="Property" Tag="Radius" DisplayName="Radius">
                                            <Parameter ParType="double" ParRole="0" ParValue="8.000000000000e+00"/>
                                        </Item>
                                        <Item ModelType="Property" Tag="Height" DisplayName="Height">
                                            <Parameter ParType="double" ParRole="0" ParValue="1.600000000000e+01"/>
                                        </Item>
                                    </Item>
                                    <Item ModelType="FullSphere" Tag="Item tag" DisplayName="FullSphere">
                                        <Item ModelType="Property" Tag="Radius" DisplayName="Radius">
                                            <Parameter ParType="double" ParRole="0" ParValue="2.500000000000e+01"/>
                                        </Item>
                                    </Item>
                                </Item>
                                <Item ModelType="Property" Tag="Material" DisplayName="Material">
                                    <Parameter ParType="ExternalProperty" ParRole="0" Text="sample_gold" Color="#ffe9bbf1" Identifier="{43399bc1-26fa-420b-bcfe-77f84d8b5874}"/>
                                </Item>
                                <Item ModelType="Property" Tag="Abundance" DisplayName="Abundance">
                                    <Parameter ParType="double" ParRole="0" ParValue="1.000000000000e+00"/>
                                </Item>
                                <Item ModelType="Vector" Tag="Position Offset" DisplayName="Position Offset">
                                    <Parameter ParType="QString" ParRole="0" ParValue="(0, 0, 75)"/>
                                    <Item ModelType="Property" Tag="X" DisplayName="X">
                                        <Parameter ParType="double" ParRole="0" ParValue="0.000000000000e+00"/>
                                    </Item>
                                    <Item ModelType="Property" Tag="Y" DisplayName="Y">
                                        <Parameter ParType="double" ParRole="0" ParValue="0.000000000000e+00"/>
                                    </Item>
                                    <Item ModelType="Property" Tag="Z" DisplayName="Z">
                                        <Parameter ParType="double" ParRole="0" ParValue="7.500000000000e+01"/>
                                    </Item>
                                </Item>
                            </Item>
                            <Item ModelType="Particle" Tag="Shell Tag" DisplayName="Particle">
                                <Item ModelType="Property" Tag="xpos" DisplayName="xpos">
                                    <Parameter ParType="double" ParRole="0" ParValue="-5.220000000000e+02"/>
                                </Item>
                                <Item ModelType="Property" Tag="ypos" DisplayName="ypos">
                                    <Parameter ParType="double" ParRole="0" ParValue="1.610000000000e+03"/>
                                </Item>
                                <Item ModelType="GroupProperty" Tag="Form Factor" DisplayName="Form Factor">
                                    <Parameter ParType="ComboProperty" ParRole="0" ParValue="9" ParExt="Aniso Pyramid;Box;Cone;Cone6;Cuboctahedron;Cylinder;Dodecahedron;Dot;Ellipsoidal Cylinder;Full Sphere;Full Spheroid;Hemi Ellipsoid;Icosahedron;Prism3;Prism6;Pyramid;Ripple1;Ripple2;Tetrahedron;Truncated Cube;Truncated Sphere;Truncated Spheroid"/>
                                    <Item ModelType="Cylinder" Tag="Item tag" DisplayName="Cylinder">
                                        <Item ModelType="Property" Tag="Radius" DisplayName="Radius">
                                            <Parameter ParType="double" ParRole="0" ParValue="8.000000000000e+00"/>
                                        </Item>
                                        <Item ModelType="Property" Tag="Height" DisplayName="Height">
                                            <Parameter ParType="double" ParRole="0" ParValue="1.600000000000e+01"/>
                                        </Item>
                                    </Item>
                                    <Item ModelType="FullSphere" Tag="Item tag" DisplayName="FullSphere">
                                        <Item ModelType="Property" Tag="Radius" DisplayName="Radius">
                                            <Parameter ParType="double" ParRole="0" ParValue="1.000000000000e+02"/>
                                        </Item>
                                    </Item>
                                </Item>
                                <Item ModelType="Property" Tag="Material" DisplayName="Material">
                                    <Parameter ParType="ExternalProperty" ParRole="0" Text="sample_air" Color="#ff6ce184" Identifier="{806491c0-c51a-4ecf-a034-15bcdf70f581}"/>
                                </Item>
                                <Item ModelType="Property" Tag="Abundance" DisplayName="Abundance">
                                    <Parameter ParType="double" ParRole="0" ParValue="1.000000000000e+00"/>
                                </Item>
                                <Item ModelType="Vector" Tag="Position Offset" DisplayName="Position Offset">
                                    <Parameter ParType="QString" ParRole="0" ParValue="(0, 0, 0)"/>
                                    <Item ModelType="Property" Tag="X" DisplayName="X">
                                        <Parameter ParType="double" ParRole="0" ParValue="0.000000000000e+00"/>
                                    </Item>
                                    <Item ModelType="Property" Tag="Y" DisplayName="Y">
                                        <Parameter ParType="double" ParRole="0" ParValue="0.000000000000e+00"/>
                                    </Item>
                                    <Item ModelType="Property" Tag="Z" DisplayName="Z">
                                        <Parameter ParType="double" ParRole="0" ParValue="0.000000000000e+00"/>
                                    </Item>
                                </Item>
                            </Item>
                        </Item>
                        <Item ModelType="ParticleCoreShell" Tag="Particle Tag" DisplayName="ParticleCoreShell">
                            <Item ModelType="Property" Tag="xpos" DisplayName="xpos">
                                <Parameter ParType="double" ParRole="0" ParValue="-3.720000000000e+02"/>
                            </Item>
                            <Item ModelType="Property" Tag="ypos" DisplayName="ypos">
                                <Parameter ParType="double" ParRole="0" ParValue="1.610000000000e+03"/>
                            </Item>
                            <Item ModelType="Property" Tag="Abundance" DisplayName="Abundance">
                                <Parameter ParType="double" ParRole="0" ParValue="1.000000000000e+00"/>
                            </Item>
                            <Item ModelType="Vector" Tag="Position Offset" DisplayName="Position Offset">
                                <Parameter ParType="QString" ParRole="0" ParValue="(0, 200, 50)"/>
                                <Item ModelType="Property" Tag="X" DisplayName="X">
                                    <Parameter ParType="double" ParRole="0" ParValue="0.000000000000e+00"/>
                                </Item>
                                <Item ModelType="Property" Tag="Y" DisplayName="Y">
                                    <Parameter ParType="double" ParRole="0" ParValue="2.000000000000e+02"/>
                                </Item>
                                <Item ModelType="Property" Tag="Z" DisplayName="Z">
                                    <Parameter ParType="double" ParRole="0" ParValue="5.000000000000e+01"/>
                                </Item>
                            </Item>
                            <Item ModelType="Particle" Tag="Core Tag" DisplayName="Particle">
                                <Item ModelType="Property" Tag="xpos" DisplayName="xpos">
                                    <Parameter ParType="double" ParRole="0" ParValue="-5.220000000000e+02"/>
                                </Item>
                                <Item ModelType="Property" Tag="ypos" DisplayName="ypos">
                                    <Parameter ParType="double" ParRole="0" ParValue="1.610000000000e+03"/>
                                </Item>
                                <Item ModelType="GroupProperty" Tag="Form Factor" DisplayName="Form Factor">
                                    <Parameter ParType="ComboProperty" ParRole="0" ParValue="9" ParExt="Aniso Pyramid;Box;Cone;Cone6;Cuboctahedron;Cylinder;Dodecahedron;Dot;Ellipsoidal Cylinder;Full Sphere;Full Spheroid;Hemi Ellipsoid;Icosahedron;Prism3;Prism6;Pyramid;Ripple1;Ripple2;Tetrahedron;Truncated Cube;Truncated Sphere;Truncated Spheroid"/>
                                    <Item ModelType="Cylinder" Tag="Item tag" DisplayName="Cylinder">
                                        <Item ModelType="Property" Tag="Radius" DisplayName="Radius">
                                            <Parameter ParType="double" ParRole="0" ParValue="8.000000000000e+00"/>
                                        </Item>
                                        <Item ModelType="Property" Tag="Height" DisplayName="Height">
                                            <Parameter ParType="double" ParRole="0" ParValue="1.600000000000e+01"/>
                                        </Item>
                                    </Item>
                                    <Item ModelType="FullSphere" Tag="Item tag" DisplayName="FullSphere">
                                        <Item ModelType="Property" Tag="Radius" DisplayName="Radius">
                                            <Parameter ParType="double" ParRole="0" ParValue="2.500000000000e+01"/>
                                        </Item>
                                    </Item>
                                </Item>
                                <Item ModelType="Property" Tag="Material" DisplayName="Material">
                                    <Parameter ParType="ExternalProperty" ParRole="0" Text="sample_gold" Color="#ffe9bbf1" Identifier="{43399bc1-26fa-420b-bcfe-77f84d8b5874}"/>
                                </Item>
                                <Item ModelType="Property" Tag="Abundance" DisplayName="Abundance">
                                    <Parameter ParType="double" ParRole="0" ParValue="1.000000000000e+00"/>
                                </Item>
                                <Item ModelType="Vector" Tag="Position Offset" DisplayName="Position Offset">
                                    <Parameter ParType="QString" ParRole="0" ParValue="(0, 0, 75)"/>
                                    <Item ModelType="Property" Tag="X" DisplayName="X">
                                        <Parameter ParType="double" ParRole="0" ParValue="0.000000000000e+00"/>
                                    </Item>
                                    <Item ModelType="Property" Tag="Y" DisplayName="Y">
                                        <Parameter ParType="double" ParRole="0" ParValue="0.000000000000e+00"/>
                                    </Item>
                                    <Item ModelType="Property" Tag="Z" DisplayName="Z">
                                        <Parameter ParType="double" ParRole="0" ParValue="7.500000000000e+01"/>
                                    </Item>
                                </Item>
                            </Item>
                            <Item ModelType="Particle" Tag="Shell Tag" DisplayName="Particle">
                                <Item ModelType="Property" Tag="xpos" DisplayName="xpos">
                                    <Parameter ParType="double" ParRole="0" ParValue="-5.220000000000e+02"/>
                                </Item>
                                <Item ModelType="Property" Tag="ypos" DisplayName="ypos">
                                    <Parameter ParType="double" ParRole="0" ParValue="1.760000000000e+03"/>
                                </Item>
                                <Item ModelType="GroupProperty" Tag="Form Factor" DisplayName="Form Factor">
                                    <Parameter ParType="ComboProperty" ParRole="0" ParValue="9" ParExt="Aniso Pyramid;Box;Cone;Cone6;Cuboctahedron;Cylinder;Dodecahedron;Dot;Ellipsoidal Cylinder;Full Sphere;Full Spheroid;Hemi Ellipsoid;Icosahedron;Prism3;Prism6;Pyramid;Ripple1;Ripple2;Tetrahedron;Truncated Cube;Truncated Sphere;Truncated Spheroid"/>
                                    <Item ModelType="Cylinder" Tag="Item tag" DisplayName="Cylinder">
                                        <Item ModelType="Property" Tag="Radius" DisplayName="Radius">
                                            <Parameter ParType="double" ParRole="0" ParValue="8.000000000000e+00"/>
                                        </Item>
                                        <Item ModelType="Property" Tag="Height" DisplayName="Height">
                                            <Parameter ParType="double" ParRole="0" ParValue="1.600000000000e+01"/>
                                        </Item>
                                    </Item>
                                    <Item ModelType="FullSphere" Tag="Item tag" DisplayName="FullSphere">
                                        <Item ModelType="Property" Tag="Radius" DisplayName="Radius">
                                            <Parameter ParType="double" ParRole="0" ParValue="1.000000000000e+02"/>
                                        </Item>
                                    </Item>
                                </Item>
                                <Item ModelType="Property" Tag="Material" DisplayName="Material">
                                    <Parameter ParType="ExternalProperty" ParRole="0" Text="sample_air" Color="#ff6ce184" Identifier="{806491c0-c51a-4ecf-a034-15bcdf70f581}"/>
                                </Item>
                                <Item ModelType="Property" Tag="Abundance" DisplayName="Abundance">
                                    <Parameter ParType="double" ParRole="0" ParValue="1.000000000000e+00"/>
                                </Item>
                                <Item ModelType="Vector" Tag="Position Offset" DisplayName="Position Offset">
                                    <Parameter ParType="QString" ParRole="0" ParValue="(0, 0, 0)"/>
                                    <Item ModelType="Property" Tag="X" DisplayName="X">
                                        <Parameter ParType="double" ParRole="0" ParValue="0.000000000000e+00"/>
                                    </Item>
                                    <Item ModelType="Property" Tag="Y" DisplayName="Y">
                                        <Parameter ParType="double" ParRole="0" ParValue="0.000000000000e+00"/>
                                    </Item>
                                    <Item ModelType="Property" Tag="Z" DisplayName="Z">
                                        <Parameter ParType="double" ParRole="0" ParValue="0.000000000000e+00"/>
                                    </Item>
                                </Item>
                            </Item>
                        </Item>
                        <Item ModelType="ParticleCoreShell" Tag="Particle Tag" DisplayName="ParticleCoreShell">
                            <Item ModelType="Property" Tag="xpos" DisplayName="xpos">
                                <Parameter ParType="double" ParRole="0" ParValue="-3.720000000000e+02"/>
                            </Item>
                            <Item ModelType="Property" Tag="ypos" DisplayName="ypos">
                                <Parameter ParType="double" ParRole="0" ParValue="1.760000000000e+03"/>
                            </Item>
                            <Item ModelType="Property" Tag="Abundance" DisplayName="Abundance">
                                <Parameter ParType="double" ParRole="0" ParValue="1.000000000000e+00"/>
                            </Item>
                            <Item ModelType="Vector" Tag="Position Offset" DisplayName="Position Offset">
                                <Parameter ParType="QString" ParRole="0" ParValue="(200, 0, 50)"/>
                                <Item ModelType="Property" Tag="X" DisplayName="X">
                                    <Parameter ParType="double" ParRole="0" ParValue="2.000000000000e+02"/>
                                </Item>
                                <Item ModelType="Property" Tag="Y" DisplayName="Y">
                                    <Parameter ParType="double" ParRole="0" ParValue="0.000000000000e+00"/>
                                </Item>
                                <Item ModelType="Property" Tag="Z" DisplayName="Z">
                                    <Parameter ParType="double" ParRole="0" ParValue="5.000000000000e+01"/>
                                </Item>
                            </Item>
                            <Item ModelType="Particle" Tag="Core Tag" DisplayName="Particle">
                                <Item ModelType="Property" Tag="xpos" DisplayName="xpos">
                                    <Parameter ParType="double" ParRole="0" ParValue="-5.220000000000e+02"/>
                                </Item>
                                <Item ModelType="Property" Tag="ypos" DisplayName="ypos">
                                    <Parameter ParType="double" ParRole="0" ParValue="1.760000000000e+03"/>
                                </Item>
                                <Item ModelType="GroupProperty" Tag="Form Factor" DisplayName="Form Factor">
                                    <Parameter ParType="ComboProperty" ParRole="0" ParValue="9" ParExt="Aniso Pyramid;Box;Cone;Cone6;Cuboctahedron;Cylinder;Dodecahedron;Dot;Ellipsoidal Cylinder;Full Sphere;Full Spheroid;Hemi Ellipsoid;Icosahedron;Prism3;Prism6;Pyramid;Ripple1;Ripple2;Tetrahedron;Truncated Cube;Truncated Sphere;Truncated Spheroid"/>
                                    <Item ModelType="Cylinder" Tag="Item tag" DisplayName="Cylinder">
                                        <Item ModelType="Property" Tag="Radius" DisplayName="Radius">
                                            <Parameter ParType="double" ParRole="0" ParValue="8.000000000000e+00"/>
                                        </Item>
                                        <Item ModelType="Property" Tag="Height" DisplayName="Height">
                                            <Parameter ParType="double" ParRole="0" ParValue="1.600000000000e+01"/>
                                        </Item>
                                    </Item>
                                    <Item ModelType="FullSphere" Tag="Item tag" DisplayName="FullSphere">
                                        <Item ModelType="Property" Tag="Radius" DisplayName="Radius">
                                            <Parameter ParType="double" ParRole="0" ParValue="2.500000000000e+01"/>
                                        </Item>
                                    </Item>
                                </Item>
                                <Item ModelType="Property" Tag="Material" DisplayName="Material">
                                    <Parameter ParType="ExternalProperty" ParRole="0" Text="sample_gold" Color="#ffe9bbf1" Identifier="{43399bc1-26fa-420b-bcfe-77f84d8b5874}"/>
                                </Item>
                                <Item ModelType="Property" Tag="Abundance" DisplayName="Abundance">
                                    <Parameter ParType="double" ParRole="0" ParValue="1.000000000000e+00"/>
                                </Item>
                                <Item ModelType="Vector" Tag="Position Offset" DisplayName="Position Offset">
                                    <Parameter ParType="QString" ParRole="0" ParValue="(0, 0, 75)"/>
                                    <Item ModelType="Property" Tag="X" DisplayName="X">
                                        <Parameter ParType="double" ParRole="0" ParValue="0.000000000000e+00"/>
                                    </Item>
                                    <Item ModelType="Property" Tag="Y" DisplayName="Y">
                                        <Parameter ParType="double" ParRole="0" ParValue="0.000000000000e+00"/>
                                    </Item>
                                    <Item ModelType="Property" Tag="Z" DisplayName="Z">
                                        <Parameter ParType="double" ParRole="0" ParValue="7.500000000000e+01"/>
                                    </Item>
                                </Item>
                            </Item>
                            <Item ModelType="Particle" Tag="Shell Tag" DisplayName="Particle">
                                <Item ModelType="Property" Tag="xpos" DisplayName="xpos">
                                    <Parameter ParType="double" ParRole="0" ParValue="-5.220000000000e+02"/>
                                </Item>
                                <Item ModelType="Property" Tag="ypos" DisplayName="ypos">
                                    <Parameter ParType="double" ParRole="0" ParValue="1.910000000000e+03"/>
                                </Item>
                                <Item ModelType="GroupProperty" Tag="Form Factor" DisplayName="Form Factor">
                                    <Parameter ParType="ComboProperty" ParRole="0" ParValue="9" ParExt="Aniso Pyramid;Box;Cone;Cone6;Cuboctahedron;Cylinder;Dodecahedron;Dot;Ellipsoidal Cylinder;Full Sphere;Full Spheroid;Hemi Ellipsoid;Icosahedron;Prism3;Prism6;Pyramid;Ripple1;Ripple2;Tetrahedron;Truncated Cube;Truncated Sphere;Truncated Spheroid"/>
                                    <Item ModelType="Cylinder" Tag="Item tag" DisplayName="Cylinder">
                                        <Item ModelType="Property" Tag="Radius" DisplayName="Radius">
                                            <Parameter ParType="double" ParRole="0" ParValue="8.000000000000e+00"/>
                                        </Item>
                                        <Item ModelType="Property" Tag="Height" DisplayName="Height">
                                            <Parameter ParType="double" ParRole="0" ParValue="1.600000000000e+01"/>
                                        </Item>
                                    </Item>
                                    <Item ModelType="FullSphere" Tag="Item tag" DisplayName="FullSphere">
                                        <Item ModelType="Property" Tag="Radius" DisplayName="Radius">
                                            <Parameter ParType="double" ParRole="0" ParValue="1.000000000000e+02"/>
                                        </Item>
                                    </Item>
                                </Item>
                                <Item ModelType="Property" Tag="Material" DisplayName="Material">
                                    <Parameter ParType="ExternalProperty" ParRole="0" Text="sample_air" Color="#ff6ce184" Identifier="{806491c0-c51a-4ecf-a034-15bcdf70f581}"/>
                                </Item>
                                <Item ModelType="Property" Tag="Abundance" DisplayName="Abundance">
                                    <Parameter ParType="double" ParRole="0" ParValue="1.000000000000e+00"/>
                                </Item>
                                <Item ModelType="Vector" Tag="Position Offset" DisplayName="Position Offset">
                                    <Parameter ParType="QString" ParRole="0" ParValue="(0, 0, 0)"/>
                                    <Item ModelType="Property" Tag="X" DisplayName="X">
                                        <Parameter ParType="double" ParRole="0" ParValue="0.000000000000e+00"/>
                                    </Item>
                                    <Item ModelType="Property" Tag="Y" DisplayName="Y">
                                        <Parameter ParType="double" ParRole="0" ParValue="0.000000000000e+00"/>
                                    </Item>
                                    <Item ModelType="Property" Tag="Z" DisplayName="Z">
                                        <Parameter ParType="double" ParRole="0" ParValue="0.000000000000e+00"/>
                                    </Item>
                                </Item>
                            </Item>
                        </Item>
                        <Item ModelType="ParticleCoreShell" Tag="Particle Tag" DisplayName="ParticleCoreShell">
                            <Item ModelType="Property" Tag="xpos" DisplayName="xpos">
                                <Parameter ParType="double" ParRole="0" ParValue="-3.720000000000e+02"/>
                            </Item>
                            <Item ModelType="Property" Tag="ypos" DisplayName="ypos">
                                <Parameter ParType="double" ParRole="0" ParValue="1.910000000000e+03"/>
                            </Item>
                            <Item ModelType="Property" Tag="Abundance" DisplayName="Abundance">
                                <Parameter ParType="double" ParRole="0" ParValue="1.000000000000e+00"/>
                            </Item>
                            <Item ModelType="Vector" Tag="Position Offset" DisplayName="Position Offset">
                                <Parameter ParType="QString" ParRole="0" ParValue="(200, 200, 50)"/>
                                <Item ModelType="Property" Tag="X" DisplayName="X">
                                    <Parameter ParType="double" ParRole="0" ParValue="2.000000000000e+02"/>
                                </Item>
                                <Item ModelType="Property" Tag="Y" DisplayName="Y">
                                    <Parameter ParType="double" ParRole="0" ParValue="2.000000000000e+02"/>
                                </Item>
                                <Item ModelType="Property" Tag="Z" DisplayName="Z">
                                    <Parameter ParType="double" ParRole="0" ParValue="5.000000000000e+01"/>
                                </Item>
                            </Item>
                            <Item ModelType="Particle" Tag="Core Tag" DisplayName="Particle">
                                <Item ModelType="Property" Tag="xpos" DisplayName="xpos">
                                    <Parameter ParType="double" ParRole="0" ParValue="-5.220000000000e+02"/>
                                </Item>
                                <Item ModelType="Property" Tag="ypos" DisplayName="ypos">
                                    <Parameter ParType="double" ParRole="0" ParValue="1.910000000000e+03"/>
                                </Item>
                                <Item ModelType="GroupProperty" Tag="Form Factor" DisplayName="Form Factor">
                                    <Parameter ParType="ComboProperty" ParRole="0" ParValue="9" ParExt="Aniso Pyramid;Box;Cone;Cone6;Cuboctahedron;Cylinder;Dodecahedron;Dot;Ellipsoidal Cylinder;Full Sphere;Full Spheroid;Hemi Ellipsoid;Icosahedron;Prism3;Prism6;Pyramid;Ripple1;Ripple2;Tetrahedron;Truncated Cube;Truncated Sphere;Truncated Spheroid"/>
                                    <Item ModelType="Cylinder" Tag="Item tag" DisplayName="Cylinder">
                                        <Item ModelType="Property" Tag="Radius" DisplayName="Radius">
                                            <Parameter ParType="double" ParRole="0" ParValue="8.000000000000e+00"/>
                                        </Item>
                                        <Item ModelType="Property" Tag="Height" DisplayName="Height">
                                            <Parameter ParType="double" ParRole="0" ParValue="1.600000000000e+01"/>
                                        </Item>
                                    </Item>
                                    <Item ModelType="FullSphere" Tag="Item tag" DisplayName="FullSphere">
                                        <Item ModelType="Property" Tag="Radius" DisplayName="Radius">
                                            <Parameter ParType="double" ParRole="0" ParValue="2.500000000000e+01"/>
                                        </Item>
                                    </Item>
                                </Item>
                                <Item ModelType="Property" Tag="Material" DisplayName="Material">
                                    <Parameter ParType="ExternalProperty" ParRole="0" Text="sample_gold" Color="#ffe9bbf1" Identifier="{43399bc1-26fa-420b-bcfe-77f84d8b5874}"/>
                                </Item>
                                <Item ModelType="Property" Tag="Abundance" DisplayName="Abundance">
                                    <Parameter ParType="double" ParRole="0" ParValue="1.000000000000e+00"/>
                                </Item>
                                <Item ModelType="Vector" Tag="Position Offset" DisplayName="Position Offset">
                                    <Parameter ParType="QString" ParRole="0" ParValue="(0, 0, 75)"/>
                                    <Item ModelType="Property" Tag="X" DisplayName="X">
                                        <Parameter ParType="double" ParRole="0" ParValue="0.000000000000e+00"/>
                                    </Item>
                                    <Item ModelType="Property" Tag="Y" DisplayName="Y">
                                        <Parameter ParType="double" ParRole="0" ParValue="0.000000000000e+00"/>
                                    </Item>
                                    <Item ModelType="Property" Tag="Z" DisplayName="Z">
                                        <Parameter ParType="double" ParRole="0" ParValue="7.500000000000e+01"/>
                                    </Item>
                                </Item>
                            </Item>
                            <Item ModelType="Particle" Tag="Shell Tag" DisplayName="Particle">
                                <Item ModelType="Property" Tag="xpos" DisplayName="xpos">
                                    <Parameter ParType="double" ParRole="0" ParValue="-5.220000000000e+02"/>
                                </Item>
                                <Item ModelType="Property" Tag="ypos" DisplayName="ypos">
                                    <Parameter ParType="double" ParRole="0" ParValue="2.060000000000e+03"/>
                                </Item>
                                <Item ModelType="GroupProperty" Tag="Form Factor" DisplayName="Form Factor">
                                    <Parameter ParType="ComboProperty" ParRole="0" ParValue="9" ParExt="Aniso Pyramid;Box;Cone;Cone6;Cuboctahedron;Cylinder;Dodecahedron;Dot;Ellipsoidal Cylinder;Full Sphere;Full Spheroid;Hemi Ellipsoid;Icosahedron;Prism3;Prism6;Pyramid;Ripple1;Ripple2;Tetrahedron;Truncated Cube;Truncated Sphere;Truncated Spheroid"/>
                                    <Item ModelType="Cylinder" Tag="Item tag" DisplayName="Cylinder">
                                        <Item ModelType="Property" Tag="Radius" DisplayName="Radius">
                                            <Parameter ParType="double" ParRole="0" ParValue="8.000000000000e+00"/>
                                        </Item>
                                        <Item ModelType="Property" Tag="Height" DisplayName="Height">
                                            <Parameter ParType="double" ParRole="0" ParValue="1.600000000000e+01"/>
                                        </Item>
                                    </Item>
                                    <Item ModelType="FullSphere" Tag="Item tag" DisplayName="FullSphere">
                                        <Item ModelType="Property" Tag="Radius" DisplayName="Radius">
                                            <Parameter ParType="double" ParRole="0" ParValue="1.000000000000e+02"/>
                                        </Item>
                                    </Item>
                                </Item>
                                <Item ModelType="Property" Tag="Material" DisplayName="Material">
                                    <Parameter ParType="ExternalProperty" ParRole="0" Text="sample_air" Color="#ff6ce184" Identifier="{806491c0-c51a-4ecf-a034-15bcdf70f581}"/>
                                </Item>
                                <Item ModelType="Property" Tag="Abundance" DisplayName="Abundance">
                                    <Parameter ParType="double" ParRole="0" ParValue="1.000000000000e+00"/>
                                </Item>
                                <Item ModelType="Vector" Tag="Position Offset" DisplayName="Position Offset">
                                    <Parameter ParType="QString" ParRole="0" ParValue="(0, 0, 0)"/>
                                    <Item ModelType="Property" Tag="X" DisplayName="X">
                                        <Parameter ParType="double" ParRole="0" ParValue="0.000000000000e+00"/>
                                    </Item>
                                    <Item ModelType="Property" Tag="Y" DisplayName="Y">
                                        <Parameter ParType="double" ParRole="0" ParValue="0.000000000000e+00"/>
                                    </Item>
                                    <Item ModelType="Property" Tag="Z" DisplayName="Z">
                                        <Parameter ParType="double" ParRole="0" ParValue="0.000000000000e+00"/>
                                    </Item>
                                </Item>
                            </Item>
                        </Item>
                    </Item>
                    <Item ModelType="Interference2DLattice" Tag="Interference Tag" DisplayName="Interference2DLattice">
                        <Item ModelType="Property" Tag="xpos" DisplayName="xpos">
                            <Parameter ParType="double" ParRole="0" ParValue="-2.220000000000e+02"/>
                        </Item>
                        <Item ModelType="Property" Tag="ypos" DisplayName="ypos">
                            <Parameter ParType="double" ParRole="0" ParValue="1.010000000000e+03"/>
                        </Item>
                        <Item ModelType="Property" Tag="PositionVariance" DisplayName="PositionVariance">
                            <Parameter ParType="double" ParRole="0" ParValue="0.000000000000e+00"/>
                        </Item>
                        <Item ModelType="GroupProperty" Tag="LatticeType" DisplayName="LatticeType">
                            <Parameter ParType="ComboProperty" ParRole="0" ParValue="0" ParExt="Basic;Hexagonal;Square"/>
                            <Item ModelType="HexagonalLattice" Tag="Item tag" DisplayName="HexagonalLattice">
                                <Item ModelType="Property" Tag="LatticeLength" DisplayName="LatticeLength">
                                    <Parameter ParType="double" ParRole="0" ParValue="2.000000000000e+01"/>
                                </Item>
                                <Item ModelType="Property" Tag="Xi" DisplayName="Xi">
                                    <Parameter ParType="double" ParRole="0" ParValue="0.000000000000e+00"/>
                                </Item>
                            </Item>
                            <Item ModelType="BasicLattice" Tag="Item tag" DisplayName="BasicLattice">
                                <Item ModelType="Property" Tag="LatticeLength1" DisplayName="LatticeLength1">
                                    <Parameter ParType="double" ParRole="0" ParValue="2.000000000000e+02"/>
                                </Item>
                                <Item ModelType="Property" Tag="LatticeLength2" DisplayName="LatticeLength2">
                                    <Parameter ParType="double" ParRole="0" ParValue="1.300000000000e+03"/>
                                </Item>
                                <Item ModelType="Property" Tag="Alpha" DisplayName="Alpha">
                                    <Parameter ParType="double" ParRole="0" ParValue="9.000000000000e+01"/>
                                </Item>
                                <Item ModelType="Property" Tag="Xi" DisplayName="Xi">
                                    <Parameter ParType="double" ParRole="0" ParValue="0.000000000000e+00"/>
                                </Item>
                            </Item>
                        </Item>
                        <Item ModelType="GroupProperty" Tag="Decay Function" DisplayName="Decay Function">
                            <Parameter ParType="ComboProperty" ParRole="0" ParValue="0" ParExt="Cauchy 2D;Gauss 2D;Voigt 2D"/>
                            <Item ModelType="FTDecayFunction2DCauchy" Tag="Item tag" DisplayName="FTDecayFunction2DCauchy">
                                <Item ModelType="Property" Tag="DecayLengthX" DisplayName="DecayLengthX">
                                    <Parameter ParType="double" ParRole="0" ParValue="2.000000000000e+02"/>
                                </Item>
                                <Item ModelType="Property" Tag="DecayLengthY" DisplayName="DecayLengthY">
                                    <Parameter ParType="double" ParRole="0" ParValue="2.000000000000e+02"/>
                                </Item>
                                <Item ModelType="Property" Tag="Gamma" DisplayName="Gamma">
                                    <Parameter ParType="double" ParRole="0" ParValue="0.000000000000e+00"/>
                                </Item>
                                <Item ModelType="Property" Tag="Delta" DisplayName="Delta">
                                    <Parameter ParType="double" ParRole="0" ParValue="9.000000000000e+01"/>
                                </Item>
                            </Item>
                        </Item>
                        <Item ModelType="Property" Tag="Integration_over_xi" DisplayName="Integration_over_xi">
                            <Parameter ParType="bool" ParRole="0" ParValue="0"/>
                        </Item>
                    </Item>
                </Item>
            </Item>
        </Item>
        <Item ModelType="MultiLayer" Tag="rootTag" DisplayName="MultiLayer">
            <Item ModelType="Property" Tag="xpos" DisplayName="xpos">
                <Parameter ParType="double" ParRole="0" ParValue="5.000000000000e+01"/>
            </Item>
            <Item ModelType="Property" Tag="ypos" DisplayName="ypos">
                <Parameter ParType="double" ParRole="0" ParValue="9.500000000000e+02"/>
            </Item>
            <Item ModelType="Property" Tag="Name" DisplayName="Name">
                <Parameter ParType="QString" ParRole="0" ParValue="orientation_y"/>
            </Item>
            <Item ModelType="Property" Tag="CrossCorrelationLength" DisplayName="CrossCorrelationLength">
                <Parameter ParType="double" ParRole="0" ParValue="0.000000000000e+00"/>
            </Item>
            <Item ModelType="Vector" Tag="ExternalField" DisplayName="ExternalField">
                <Parameter ParType="QString" ParRole="0" ParValue="(0, 0, 0)"/>
                <Item ModelType="Property" Tag="X" DisplayName="X">
                    <Parameter ParType="double" ParRole="0" ParValue="0.000000000000e+00"/>
                </Item>
                <Item ModelType="Property" Tag="Y" DisplayName="Y">
                    <Parameter ParType="double" ParRole="0" ParValue="0.000000000000e+00"/>
                </Item>
                <Item ModelType="Property" Tag="Z" DisplayName="Z">
                    <Parameter ParType="double" ParRole="0" ParValue="0.000000000000e+00"/>
                </Item>
            </Item>
            <Item ModelType="Layer" Tag="Layer tag" DisplayName="Layer">
                <Item ModelType="Property" Tag="xpos" DisplayName="xpos">
                    <Parameter ParType="double" ParRole="0" ParValue="1.400000000000e+01"/>
                </Item>
                <Item ModelType="Property" Tag="ypos" DisplayName="ypos">
                    <Parameter ParType="double" ParRole="0" ParValue="0.000000000000e+00"/>
                </Item>
                <Item ModelType="Property" Tag="Thickness" DisplayName="Thickness">
                    <Parameter ParType="double" ParRole="0" ParValue="0.000000000000e+00"/>
                </Item>
                <Item ModelType="Property" Tag="Material" DisplayName="Material">
                    <Parameter ParType="ExternalProperty" ParRole="0" Text="sample_air" Color="#ff6ce184" Identifier="{806491c0-c51a-4ecf-a034-15bcdf70f581}"/>
                </Item>
                <Item ModelType="Property" Tag="Number of slices" DisplayName="Number of slices">
                    <Parameter ParType="int" ParRole="0" ParValue="1"/>
                </Item>
                <Item ModelType="GroupProperty" Tag="Top roughness" DisplayName="Top roughness">
                    <Parameter ParType="ComboProperty" ParRole="0" ParValue="1" ParExt="Basic;No"/>
                    <Item ModelType="LayerZeroRoughness" Tag="Item tag" DisplayName="LayerZeroRoughness"/>
                </Item>
            </Item>
            <Item ModelType="Layer" Tag="Layer tag" DisplayName="Layer">
                <Item ModelType="Property" Tag="xpos" DisplayName="xpos">
                    <Parameter ParType="double" ParRole="0" ParValue="1.400000000000e+01"/>
                </Item>
                <Item ModelType="Property" Tag="ypos" DisplayName="ypos">
                    <Parameter ParType="double" ParRole="0" ParValue="3.000000000000e+01"/>
                </Item>
                <Item ModelType="Property" Tag="Thickness" DisplayName="Thickness">
                    <Parameter ParType="double" ParRole="0" ParValue="0.000000000000e+00"/>
                </Item>
                <Item ModelType="Property" Tag="Material" DisplayName="Material">
                    <Parameter ParType="ExternalProperty" ParRole="0" Text="sample_silicon" Color="#fff14990" Identifier="{0ad14b70-743c-46d0-8111-9e77fff90d92}"/>
                </Item>
                <Item ModelType="Property" Tag="Number of slices" DisplayName="Number of slices">
                    <Parameter ParType="int" ParRole="0" ParValue="1"/>
                </Item>
                <Item ModelType="GroupProperty" Tag="Top roughness" DisplayName="Top roughness">
                    <Parameter ParType="ComboProperty" ParRole="0" ParValue="1" ParExt="Basic;No"/>
                    <Item ModelType="LayerZeroRoughness" Tag="Item tag" DisplayName="LayerZeroRoughness"/>
                </Item>
                <Item ModelType="ParticleLayout" Tag="Layout tag" DisplayName="ParticleLayout">
                    <Item ModelType="Property" Tag="xpos" DisplayName="xpos">
                        <Parameter ParType="double" ParRole="0" ParValue="-7.200000000000e+01"/>
                    </Item>
                    <Item ModelType="Property" Tag="ypos" DisplayName="ypos">
                        <Parameter ParType="double" ParRole="0" ParValue="1.010000000000e+03"/>
                    </Item>
                    <Item ModelType="Property" Tag="TotalParticleDensity" DisplayName="TotalParticleDensity">
                        <Parameter ParType="double" ParRole="0" ParValue="3.846153846154e-06"/>
                    </Item>
                    <Item ModelType="Property" Tag="Weight" DisplayName="Weight">
                        <Parameter ParType="double" ParRole="0" ParValue="1.000000000000e+00"/>
                    </Item>
                    <Item ModelType="ParticleComposition" Tag="Particle Tag" DisplayName="ParticleComposition">
                        <Item ModelType="Property" Tag="xpos" DisplayName="xpos">
                            <Parameter ParType="double" ParRole="0" ParValue="-2.220000000000e+02"/>
                        </Item>
                        <Item ModelType="Property" Tag="ypos" DisplayName="ypos">
                            <Parameter ParType="double" ParRole="0" ParValue="1.010000000000e+03"/>
                        </Item>
                        <Item ModelType="Property" Tag="Abundance" DisplayName="Abundance">
                            <Parameter ParType="double" ParRole="0" ParValue="1.000000000000e+00"/>
                        </Item>
                        <Item ModelType="Vector" Tag="Position Offset" DisplayName="Position Offset">
                            <Parameter ParType="QString" ParRole="0" ParValue="(0, 0, 0)"/>
                            <Item ModelType="Property" Tag="X" DisplayName="X">
                                <Parameter ParType="double" ParRole="0" ParValue="0.000000000000e+00"/>
                            </Item>
                            <Item ModelType="Property" Tag="Y" DisplayName="Y">
                                <Parameter ParType="double" ParRole="0" ParValue="0.000000000000e+00"/>
                            </Item>
                            <Item ModelType="Property" Tag="Z" DisplayName="Z">
                                <Parameter ParType="double" ParRole="0" ParValue="0.000000000000e+00"/>
                            </Item>
                        </Item>
                        <Item ModelType="ParticleCoreShell" Tag="Particle Tag" DisplayName="ParticleCoreShell">
                            <Item ModelType="Property" Tag="xpos" DisplayName="xpos">
                                <Parameter ParType="double" ParRole="0" ParValue="-3.720000000000e+02"/>
                            </Item>
                            <Item ModelType="Property" Tag="ypos" DisplayName="ypos">
                                <Parameter ParType="double" ParRole="0" ParValue="1.010000000000e+03"/>
                            </Item>
                            <Item ModelType="Property" Tag="Abundance" DisplayName="Abundance">
                                <Parameter ParType="double" ParRole="0" ParValue="1.000000000000e+00"/>
                            </Item>
                            <Item ModelType="Vector" Tag="Position Offset" DisplayName="Position Offset">
                                <Parameter ParType="QString" ParRole="0" ParValue="(0, 0, 0)"/>
                                <Item ModelType="Property" Tag="X" DisplayName="X">
                                    <Parameter ParType="double" ParRole="0" ParValue="0.000000000000e+00"/>
                                </Item>
                                <Item ModelType="Property" Tag="Y" DisplayName="Y">
                                    <Parameter ParType="double" ParRole="0" ParValue="0.000000000000e+00"/>
                                </Item>
                                <Item ModelType="Property" Tag="Z" DisplayName="Z">
                                    <Parameter ParType="double" ParRole="0" ParValue="0.000000000000e+00"/>
                                </Item>
                            </Item>
                            <Item ModelType="Particle" Tag="Core Tag" DisplayName="Particle">
                                <Item ModelType="Property" Tag="xpos" DisplayName="xpos">
                                    <Parameter ParType="double" ParRole="0" ParValue="-5.220000000000e+02"/>
                                </Item>
                                <Item ModelType="Property" Tag="ypos" DisplayName="ypos">
                                    <Parameter ParType="double" ParRole="0" ParValue="1.010000000000e+03"/>
                                </Item>
                                <Item ModelType="GroupProperty" Tag="Form Factor" DisplayName="Form Factor">
                                    <Parameter ParType="ComboProperty" ParRole="0" ParValue="9" ParExt="Aniso Pyramid;Box;Cone;Cone6;Cuboctahedron;Cylinder;Dodecahedron;Dot;Ellipsoidal Cylinder;Full Sphere;Full Spheroid;Hemi Ellipsoid;Icosahedron;Prism3;Prism6;Pyramid;Ripple1;Ripple2;Tetrahedron;Truncated Cube;Truncated Sphere;Truncated Spheroid"/>
                                    <Item ModelType="Cylinder" Tag="Item tag" DisplayName="Cylinder">
                                        <Item ModelType="Property" Tag="Radius" DisplayName="Radius">
                                            <Parameter ParType="double" ParRole="0" ParValue="8.000000000000e+00"/>
                                        </Item>
                                        <Item ModelType="Property" Tag="Height" DisplayName="Height">
                                            <Parameter ParType="double" ParRole="0" ParValue="1.600000000000e+01"/>
                                        </Item>
                                    </Item>
                                    <Item ModelType="FullSphere" Tag="Item tag" DisplayName="FullSphere">
                                        <Item ModelType="Property" Tag="Radius" DisplayName="Radius">
                                            <Parameter ParType="double" ParRole="0" ParValue="2.500000000000e+01"/>
                                        </Item>
                                    </Item>
                                </Item>
                                <Item ModelType="Property" Tag="Material" DisplayName="Material">
                                    <Parameter ParType="ExternalProperty" ParRole="0" Text="sample_gold" Color="#ffe9bbf1" Identifier="{43399bc1-26fa-420b-bcfe-77f84d8b5874}"/>
                                </Item>
                                <Item ModelType="Property" Tag="Abundance" DisplayName="Abundance">
                                    <Parameter ParType="double" ParRole="0" ParValue="1.000000000000e+00"/>
                                </Item>
                                <Item ModelType="Vector" Tag="Position Offset" DisplayName="Position Offset">
                                    <Parameter ParType="QString" ParRole="0" ParValue="(0, 0, 75)"/>
                                    <Item ModelType="Property" Tag="X" DisplayName="X">
                                        <Parameter ParType="double" ParRole="0" ParValue="0.000000000000e+00"/>
                                    </Item>
                                    <Item ModelType="Property" Tag="Y" DisplayName="Y">
                                        <Parameter ParType="double" ParRole="0" ParValue="0.000000000000e+00"/>
                                    </Item>
                                    <Item ModelType="Property" Tag="Z" DisplayName="Z">
                                        <Parameter ParType="double" ParRole="0" ParValue="7.500000000000e+01"/>
                                    </Item>
                                </Item>
                            </Item>
                            <Item ModelType="Particle" Tag="Shell Tag" DisplayName="Particle">
                                <Item ModelType="Property" Tag="xpos" DisplayName="xpos">
                                    <Parameter ParType="double" ParRole="0" ParValue="-5.220000000000e+02"/>
                                </Item>
                                <Item ModelType="Property" Tag="ypos" DisplayName="ypos">
                                    <Parameter ParType="double" ParRole="0" ParValue="1.160000000000e+03"/>
                                </Item>
                                <Item ModelType="GroupProperty" Tag="Form Factor" DisplayName="Form Factor">
                                    <Parameter ParType="ComboProperty" ParRole="0" ParValue="9" ParExt="Aniso Pyramid;Box;Cone;Cone6;Cuboctahedron;Cylinder;Dodecahedron;Dot;Ellipsoidal Cylinder;Full Sphere;Full Spheroid;Hemi Ellipsoid;Icosahedron;Prism3;Prism6;Pyramid;Ripple1;Ripple2;Tetrahedron;Truncated Cube;Truncated Sphere;Truncated Spheroid"/>
                                    <Item ModelType="Cylinder" Tag="Item tag" DisplayName="Cylinder">
                                        <Item ModelType="Property" Tag="Radius" DisplayName="Radius">
                                            <Parameter ParType="double" ParRole="0" ParValue="8.000000000000e+00"/>
                                        </Item>
                                        <Item ModelType="Property" Tag="Height" DisplayName="Height">
                                            <Parameter ParType="double" ParRole="0" ParValue="1.600000000000e+01"/>
                                        </Item>
                                    </Item>
                                    <Item ModelType="FullSphere" Tag="Item tag" DisplayName="FullSphere">
                                        <Item ModelType="Property" Tag="Radius" DisplayName="Radius">
                                            <Parameter ParType="double" ParRole="0" ParValue="1.000000000000e+02"/>
                                        </Item>
                                    </Item>
                                </Item>
                                <Item ModelType="Property" Tag="Material" DisplayName="Material">
                                    <Parameter ParType="ExternalProperty" ParRole="0" Text="sample_air" Color="#ff6ce184" Identifier="{806491c0-c51a-4ecf-a034-15bcdf70f581}"/>
                                </Item>
                                <Item ModelType="Property" Tag="Abundance" DisplayName="Abundance">
                                    <Parameter ParType="double" ParRole="0" ParValue="1.000000000000e+00"/>
                                </Item>
                                <Item ModelType="Vector" Tag="Position Offset" DisplayName="Position Offset">
                                    <Parameter ParType="QString" ParRole="0" ParValue="(0, 0, 0)"/>
                                    <Item ModelType="Property" Tag="X" DisplayName="X">
                                        <Parameter ParType="double" ParRole="0" ParValue="0.000000000000e+00"/>
                                    </Item>
                                    <Item ModelType="Property" Tag="Y" DisplayName="Y">
                                        <Parameter ParType="double" ParRole="0" ParValue="0.000000000000e+00"/>
                                    </Item>
                                    <Item ModelType="Property" Tag="Z" DisplayName="Z">
                                        <Parameter ParType="double" ParRole="0" ParValue="0.000000000000e+00"/>
                                    </Item>
                                </Item>
                            </Item>
                        </Item>
                        <Item ModelType="ParticleCoreShell" Tag="Particle Tag" DisplayName="ParticleCoreShell">
                            <Item ModelType="Property" Tag="xpos" DisplayName="xpos">
                                <Parameter ParType="double" ParRole="0" ParValue="-3.720000000000e+02"/>
                            </Item>
                            <Item ModelType="Property" Tag="ypos" DisplayName="ypos">
                                <Parameter ParType="double" ParRole="0" ParValue="1.160000000000e+03"/>
                            </Item>
                            <Item ModelType="Property" Tag="Abundance" DisplayName="Abundance">
                                <Parameter ParType="double" ParRole="0" ParValue="1.000000000000e+00"/>
                            </Item>
                            <Item ModelType="Vector" Tag="Position Offset" DisplayName="Position Offset">
                                <Parameter ParType="QString" ParRole="0" ParValue="(0, 200, 0)"/>
                                <Item ModelType="Property" Tag="X" DisplayName="X">
                                    <Parameter ParType="double" ParRole="0" ParValue="0.000000000000e+00"/>
                                </Item>
                                <Item ModelType="Property" Tag="Y" DisplayName="Y">
                                    <Parameter ParType="double" ParRole="0" ParValue="2.000000000000e+02"/>
                                </Item>
                                <Item ModelType="Property" Tag="Z" DisplayName="Z">
                                    <Parameter ParType="double" ParRole="0" ParValue="0.000000000000e+00"/>
                                </Item>
                            </Item>
                            <Item ModelType="Particle" Tag="Core Tag" DisplayName="Particle">
                                <Item ModelType="Property" Tag="xpos" DisplayName="xpos">
                                    <Parameter ParType="double" ParRole="0" ParValue="-5.220000000000e+02"/>
                                </Item>
                                <Item ModelType="Property" Tag="ypos" DisplayName="ypos">
                                    <Parameter ParType="double" ParRole="0" ParValue="1.160000000000e+03"/>
                                </Item>
                                <Item ModelType="GroupProperty" Tag="Form Factor" DisplayName="Form Factor">
                                    <Parameter ParType="ComboProperty" ParRole="0" ParValue="9" ParExt="Aniso Pyramid;Box;Cone;Cone6;Cuboctahedron;Cylinder;Dodecahedron;Dot;Ellipsoidal Cylinder;Full Sphere;Full Spheroid;Hemi Ellipsoid;Icosahedron;Prism3;Prism6;Pyramid;Ripple1;Ripple2;Tetrahedron;Truncated Cube;Truncated Sphere;Truncated Spheroid"/>
                                    <Item ModelType="Cylinder" Tag="Item tag" DisplayName="Cylinder">
                                        <Item ModelType="Property" Tag="Radius" DisplayName="Radius">
                                            <Parameter ParType="double" ParRole="0" ParValue="8.000000000000e+00"/>
                                        </Item>
                                        <Item ModelType="Property" Tag="Height" DisplayName="Height">
                                            <Parameter ParType="double" ParRole="0" ParValue="1.600000000000e+01"/>
                                        </Item>
                                    </Item>
                                    <Item ModelType="FullSphere" Tag="Item tag" DisplayName="FullSphere">
                                        <Item ModelType="Property" Tag="Radius" DisplayName="Radius">
                                            <Parameter ParType="double" ParRole="0" ParValue="2.500000000000e+01"/>
                                        </Item>
                                    </Item>
                                </Item>
                                <Item ModelType="Property" Tag="Material" DisplayName="Material">
                                    <Parameter ParType="ExternalProperty" ParRole="0" Text="sample_gold" Color="#ffe9bbf1" Identifier="{43399bc1-26fa-420b-bcfe-77f84d8b5874}"/>
                                </Item>
                                <Item ModelType="Property" Tag="Abundance" DisplayName="Abundance">
                                    <Parameter ParType="double" ParRole="0" ParValue="1.000000000000e+00"/>
                                </Item>
                                <Item ModelType="Vector" Tag="Position Offset" DisplayName="Position Offset">
                                    <Parameter ParType="QString" ParRole="0" ParValue="(0, 0, 75)"/>
                                    <Item ModelType="Property" Tag="X" DisplayName="X">
                                        <Parameter ParType="double" ParRole="0" ParValue="0.000000000000e+00"/>
                                    </Item>
                                    <Item ModelType="Property" Tag="Y" DisplayName="Y">
                                        <Parameter ParType="double" ParRole="0" ParValue="0.000000000000e+00"/>
                                    </Item>
                                    <Item ModelType="Property" Tag="Z" DisplayName="Z">
                                        <Parameter ParType="double" ParRole="0" ParValue="7.500000000000e+01"/>
                                    </Item>
                                </Item>
                            </Item>
                            <Item ModelType="Particle" Tag="Shell Tag" DisplayName="Particle">
                                <Item ModelType="Property" Tag="xpos" DisplayName="xpos">
                                    <Parameter ParType="double" ParRole="0" ParValue="-5.220000000000e+02"/>
                                </Item>
                                <Item ModelType="Property" Tag="ypos" DisplayName="ypos">
                                    <Parameter ParType="double" ParRole="0" ParValue="1.310000000000e+03"/>
                                </Item>
                                <Item ModelType="GroupProperty" Tag="Form Factor" DisplayName="Form Factor">
                                    <Parameter ParType="ComboProperty" ParRole="0" ParValue="9" ParExt="Aniso Pyramid;Box;Cone;Cone6;Cuboctahedron;Cylinder;Dodecahedron;Dot;Ellipsoidal Cylinder;Full Sphere;Full Spheroid;Hemi Ellipsoid;Icosahedron;Prism3;Prism6;Pyramid;Ripple1;Ripple2;Tetrahedron;Truncated Cube;Truncated Sphere;Truncated Spheroid"/>
                                    <Item ModelType="Cylinder" Tag="Item tag" DisplayName="Cylinder">
                                        <Item ModelType="Property" Tag="Radius" DisplayName="Radius">
                                            <Parameter ParType="double" ParRole="0" ParValue="8.000000000000e+00"/>
                                        </Item>
                                        <Item ModelType="Property" Tag="Height" DisplayName="Height">
                                            <Parameter ParType="double" ParRole="0" ParValue="1.600000000000e+01"/>
                                        </Item>
                                    </Item>
                                    <Item ModelType="FullSphere" Tag="Item tag" DisplayName="FullSphere">
                                        <Item ModelType="Property" Tag="Radius" DisplayName="Radius">
                                            <Parameter ParType="double" ParRole="0" ParValue="1.000000000000e+02"/>
                                        </Item>
                                    </Item>
                                </Item>
                                <Item ModelType="Property" Tag="Material" DisplayName="Material">
                                    <Parameter ParType="ExternalProperty" ParRole="0" Text="sample_air" Color="#ff6ce184" Identifier="{806491c0-c51a-4ecf-a034-15bcdf70f581}"/>
                                </Item>
                                <Item ModelType="Property" Tag="Abundance" DisplayName="Abundance">
                                    <Parameter ParType="double" ParRole="0" ParValue="1.000000000000e+00"/>
                                </Item>
                                <Item ModelType="Vector" Tag="Position Offset" DisplayName="Position Offset">
                                    <Parameter ParType="QString" ParRole="0" ParValue="(0, 0, 0)"/>
                                    <Item ModelType="Property" Tag="X" DisplayName="X">
                                        <Parameter ParType="double" ParRole="0" ParValue="0.000000000000e+00"/>
                                    </Item>
                                    <Item ModelType="Property" Tag="Y" DisplayName="Y">
                                        <Parameter ParType="double" ParRole="0" ParValue="0.000000000000e+00"/>
                                    </Item>
                                    <Item ModelType="Property" Tag="Z" DisplayName="Z">
                                        <Parameter ParType="double" ParRole="0" ParValue="0.000000000000e+00"/>
                                    </Item>
                                </Item>
                            </Item>
                        </Item>
                        <Item ModelType="ParticleCoreShell" Tag="Particle Tag" DisplayName="ParticleCoreShell">
                            <Item ModelType="Property" Tag="xpos" DisplayName="xpos">
                                <Parameter ParType="double" ParRole="0" ParValue="-3.720000000000e+02"/>
                            </Item>
                            <Item ModelType="Property" Tag="ypos" DisplayName="ypos">
                                <Parameter ParType="double" ParRole="0" ParValue="1.310000000000e+03"/>
                            </Item>
                            <Item ModelType="Property" Tag="Abundance" DisplayName="Abundance">
                                <Parameter ParType="double" ParRole="0" ParValue="1.000000000000e+00"/>
                            </Item>
                            <Item ModelType="Vector" Tag="Position Offset" DisplayName="Position Offset">
                                <Parameter ParType="QString" ParRole="0" ParValue="(200, 0, 0)"/>
                                <Item ModelType="Property" Tag="X" DisplayName="X">
                                    <Parameter ParType="double" ParRole="0" ParValue="2.000000000000e+02"/>
                                </Item>
                                <Item ModelType="Property" Tag="Y" DisplayName="Y">
                                    <Parameter ParType="double" ParRole="0" ParValue="0.000000000000e+00"/>
                                </Item>
                                <Item ModelType="Property" Tag="Z" DisplayName="Z">
                                    <Parameter ParType="double" ParRole="0" ParValue="0.000000000000e+00"/>
                                </Item>
                            </Item>
                            <Item ModelType="Particle" Tag="Core Tag" DisplayName="Particle">
                                <Item ModelType="Property" Tag="xpos" DisplayName="xpos">
                                    <Parameter ParType="double" ParRole="0" ParValue="-5.220000000000e+02"/>
                                </Item>
                                <Item ModelType="Property" Tag="ypos" DisplayName="ypos">
                                    <Parameter ParType="double" ParRole="0" ParValue="1.310000000000e+03"/>
                                </Item>
                                <Item ModelType="GroupProperty" Tag="Form Factor" DisplayName="Form Factor">
                                    <Parameter ParType="ComboProperty" ParRole="0" ParValue="9" ParExt="Aniso Pyramid;Box;Cone;Cone6;Cuboctahedron;Cylinder;Dodecahedron;Dot;Ellipsoidal Cylinder;Full Sphere;Full Spheroid;Hemi Ellipsoid;Icosahedron;Prism3;Prism6;Pyramid;Ripple1;Ripple2;Tetrahedron;Truncated Cube;Truncated Sphere;Truncated Spheroid"/>
                                    <Item ModelType="Cylinder" Tag="Item tag" DisplayName="Cylinder">
                                        <Item ModelType="Property" Tag="Radius" DisplayName="Radius">
                                            <Parameter ParType="double" ParRole="0" ParValue="8.000000000000e+00"/>
                                        </Item>
                                        <Item ModelType="Property" Tag="Height" DisplayName="Height">
                                            <Parameter ParType="double" ParRole="0" ParValue="1.600000000000e+01"/>
                                        </Item>
                                    </Item>
                                    <Item ModelType="FullSphere" Tag="Item tag" DisplayName="FullSphere">
                                        <Item ModelType="Property" Tag="Radius" DisplayName="Radius">
                                            <Parameter ParType="double" ParRole="0" ParValue="2.500000000000e+01"/>
                                        </Item>
                                    </Item>
                                </Item>
                                <Item ModelType="Property" Tag="Material" DisplayName="Material">
                                    <Parameter ParType="ExternalProperty" ParRole="0" Text="sample_gold" Color="#ffe9bbf1" Identifier="{43399bc1-26fa-420b-bcfe-77f84d8b5874}"/>
                                </Item>
                                <Item ModelType="Property" Tag="Abundance" DisplayName="Abundance">
                                    <Parameter ParType="double" ParRole="0" ParValue="1.000000000000e+00"/>
                                </Item>
                                <Item ModelType="Vector" Tag="Position Offset" DisplayName="Position Offset">
                                    <Parameter ParType="QString" ParRole="0" ParValue="(0, 0, 75)"/>
                                    <Item ModelType="Property" Tag="X" DisplayName="X">
                                        <Parameter ParType="double" ParRole="0" ParValue="0.000000000000e+00"/>
                                    </Item>
                                    <Item ModelType="Property" Tag="Y" DisplayName="Y">
                                        <Parameter ParType="double" ParRole="0" ParValue="0.000000000000e+00"/>
                                    </Item>
                                    <Item ModelType="Property" Tag="Z" DisplayName="Z">
                                        <Parameter ParType="double" ParRole="0" ParValue="7.500000000000e+01"/>
                                    </Item>
                                </Item>
                            </Item>
                            <Item ModelType="Particle" Tag="Shell Tag" DisplayName="Particle">
                                <Item ModelType="Property" Tag="xpos" DisplayName="xpos">
                                    <Parameter ParType="double" ParRole="0" ParValue="-5.220000000000e+02"/>
                                </Item>
                                <Item ModelType="Property" Tag="ypos" DisplayName="ypos">
                                    <Parameter ParType="double" ParRole="0" ParValue="1.460000000000e+03"/>
                                </Item>
                                <Item ModelType="GroupProperty" Tag="Form Factor" DisplayName="Form Factor">
                                    <Parameter ParType="ComboProperty" ParRole="0" ParValue="9" ParExt="Aniso Pyramid;Box;Cone;Cone6;Cuboctahedron;Cylinder;Dodecahedron;Dot;Ellipsoidal Cylinder;Full Sphere;Full Spheroid;Hemi Ellipsoid;Icosahedron;Prism3;Prism6;Pyramid;Ripple1;Ripple2;Tetrahedron;Truncated Cube;Truncated Sphere;Truncated Spheroid"/>
                                    <Item ModelType="Cylinder" Tag="Item tag" DisplayName="Cylinder">
                                        <Item ModelType="Property" Tag="Radius" DisplayName="Radius">
                                            <Parameter ParType="double" ParRole="0" ParValue="8.000000000000e+00"/>
                                        </Item>
                                        <Item ModelType="Property" Tag="Height" DisplayName="Height">
                                            <Parameter ParType="double" ParRole="0" ParValue="1.600000000000e+01"/>
                                        </Item>
                                    </Item>
                                    <Item ModelType="FullSphere" Tag="Item tag" DisplayName="FullSphere">
                                        <Item ModelType="Property" Tag="Radius" DisplayName="Radius">
                                            <Parameter ParType="double" ParRole="0" ParValue="1.000000000000e+02"/>
                                        </Item>
                                    </Item>
                                </Item>
                                <Item ModelType="Property" Tag="Material" DisplayName="Material">
                                    <Parameter ParType="ExternalProperty" ParRole="0" Text="sample_air" Color="#ff6ce184" Identifier="{806491c0-c51a-4ecf-a034-15bcdf70f581}"/>
                                </Item>
                                <Item ModelType="Property" Tag="Abundance" DisplayName="Abundance">
                                    <Parameter ParType="double" ParRole="0" ParValue="1.000000000000e+00"/>
                                </Item>
                                <Item ModelType="Vector" Tag="Position Offset" DisplayName="Position Offset">
                                    <Parameter ParType="QString" ParRole="0" ParValue="(0, 0, 0)"/>
                                    <Item ModelType="Property" Tag="X" DisplayName="X">
                                        <Parameter ParType="double" ParRole="0" ParValue="0.000000000000e+00"/>
                                    </Item>
                                    <Item ModelType="Property" Tag="Y" DisplayName="Y">
                                        <Parameter ParType="double" ParRole="0" ParValue="0.000000000000e+00"/>
                                    </Item>
                                    <Item ModelType="Property" Tag="Z" DisplayName="Z">
                                        <Parameter ParType="double" ParRole="0" ParValue="0.000000000000e+00"/>
                                    </Item>
                                </Item>
                            </Item>
                        </Item>
                        <Item ModelType="ParticleCoreShell" Tag="Particle Tag" DisplayName="ParticleCoreShell">
                            <Item ModelType="Property" Tag="xpos" DisplayName="xpos">
                                <Parameter ParType="double" ParRole="0" ParValue="-3.720000000000e+02"/>
                            </Item>
                            <Item ModelType="Property" Tag="ypos" DisplayName="ypos">
                                <Parameter ParType="double" ParRole="0" ParValue="1.460000000000e+03"/>
                            </Item>
                            <Item ModelType="Property" Tag="Abundance" DisplayName="Abundance">
                                <Parameter ParType="double" ParRole="0" ParValue="1.000000000000e+00"/>
                            </Item>
                            <Item ModelType="Vector" Tag="Position Offset" DisplayName="Position Offset">
                                <Parameter ParType="QString" ParRole="0" ParValue="(200, 200, 0)"/>
                                <Item ModelType="Property" Tag="X" DisplayName="X">
                                    <Parameter ParType="double" ParRole="0" ParValue="2.000000000000e+02"/>
                                </Item>
                                <Item ModelType="Property" Tag="Y" DisplayName="Y">
                                    <Parameter ParType="double" ParRole="0" ParValue="2.000000000000e+02"/>
                                </Item>
                                <Item ModelType="Property" Tag="Z" DisplayName="Z">
                                    <Parameter ParType="double" ParRole="0" ParValue="0.000000000000e+00"/>
                                </Item>
                            </Item>
                            <Item ModelType="Particle" Tag="Core Tag" DisplayName="Particle">
                                <Item ModelType="Property" Tag="xpos" DisplayName="xpos">
                                    <Parameter ParType="double" ParRole="0" ParValue="-5.220000000000e+02"/>
                                </Item>
                                <Item ModelType="Property" Tag="ypos" DisplayName="ypos">
                                    <Parameter ParType="double" ParRole="0" ParValue="1.460000000000e+03"/>
                                </Item>
                                <Item ModelType="GroupProperty" Tag="Form Factor" DisplayName="Form Factor">
                                    <Parameter ParType="ComboProperty" ParRole="0" ParValue="9" ParExt="Aniso Pyramid;Box;Cone;Cone6;Cuboctahedron;Cylinder;Dodecahedron;Dot;Ellipsoidal Cylinder;Full Sphere;Full Spheroid;Hemi Ellipsoid;Icosahedron;Prism3;Prism6;Pyramid;Ripple1;Ripple2;Tetrahedron;Truncated Cube;Truncated Sphere;Truncated Spheroid"/>
                                    <Item ModelType="Cylinder" Tag="Item tag" DisplayName="Cylinder">
                                        <Item ModelType="Property" Tag="Radius" DisplayName="Radius">
                                            <Parameter ParType="double" ParRole="0" ParValue="8.000000000000e+00"/>
                                        </Item>
                                        <Item ModelType="Property" Tag="Height" DisplayName="Height">
                                            <Parameter ParType="double" ParRole="0" ParValue="1.600000000000e+01"/>
                                        </Item>
                                    </Item>
                                    <Item ModelType="FullSphere" Tag="Item tag" DisplayName="FullSphere">
                                        <Item ModelType="Property" Tag="Radius" DisplayName="Radius">
                                            <Parameter ParType="double" ParRole="0" ParValue="2.500000000000e+01"/>
                                        </Item>
                                    </Item>
                                </Item>
                                <Item ModelType="Property" Tag="Material" DisplayName="Material">
                                    <Parameter ParType="ExternalProperty" ParRole="0" Text="sample_gold" Color="#ffe9bbf1" Identifier="{43399bc1-26fa-420b-bcfe-77f84d8b5874}"/>
                                </Item>
                                <Item ModelType="Property" Tag="Abundance" DisplayName="Abundance">
                                    <Parameter ParType="double" ParRole="0" ParValue="1.000000000000e+00"/>
                                </Item>
                                <Item ModelType="Vector" Tag="Position Offset" DisplayName="Position Offset">
                                    <Parameter ParType="QString" ParRole="0" ParValue="(0, 0, 75)"/>
                                    <Item ModelType="Property" Tag="X" DisplayName="X">
                                        <Parameter ParType="double" ParRole="0" ParValue="0.000000000000e+00"/>
                                    </Item>
                                    <Item ModelType="Property" Tag="Y" DisplayName="Y">
                                        <Parameter ParType="double" ParRole="0" ParValue="0.000000000000e+00"/>
                                    </Item>
                                    <Item ModelType="Property" Tag="Z" DisplayName="Z">
                                        <Parameter ParType="double" ParRole="0" ParValue="7.500000000000e+01"/>
                                    </Item>
                                </Item>
                            </Item>
                            <Item ModelType="Particle" Tag="Shell Tag" DisplayName="Particle">
                                <Item ModelType="Property" Tag="xpos" DisplayName="xpos">
                                    <Parameter ParType="double" ParRole="0" ParValue="-5.220000000000e+02"/>
                                </Item>
                                <Item ModelType="Property" Tag="ypos" DisplayName="ypos">
                                    <Parameter ParType="double" ParRole="0" ParValue="1.610000000000e+03"/>
                                </Item>
                                <Item ModelType="GroupProperty" Tag="Form Factor" DisplayName="Form Factor">
                                    <Parameter ParType="ComboProperty" ParRole="0" ParValue="9" ParExt="Aniso Pyramid;Box;Cone;Cone6;Cuboctahedron;Cylinder;Dodecahedron;Dot;Ellipsoidal Cylinder;Full Sphere;Full Spheroid;Hemi Ellipsoid;Icosahedron;Prism3;Prism6;Pyramid;Ripple1;Ripple2;Tetrahedron;Truncated Cube;Truncated Sphere;Truncated Spheroid"/>
                                    <Item ModelType="Cylinder" Tag="Item tag" DisplayName="Cylinder">
                                        <Item ModelType="Property" Tag="Radius" DisplayName="Radius">
                                            <Parameter ParType="double" ParRole="0" ParValue="8.000000000000e+00"/>
                                        </Item>
                                        <Item ModelType="Property" Tag="Height" DisplayName="Height">
                                            <Parameter ParType="double" ParRole="0" ParValue="1.600000000000e+01"/>
                                        </Item>
                                    </Item>
                                    <Item ModelType="FullSphere" Tag="Item tag" DisplayName="FullSphere">
                                        <Item ModelType="Property" Tag="Radius" DisplayName="Radius">
                                            <Parameter ParType="double" ParRole="0" ParValue="1.000000000000e+02"/>
                                        </Item>
                                    </Item>
                                </Item>
                                <Item ModelType="Property" Tag="Material" DisplayName="Material">
                                    <Parameter ParType="ExternalProperty" ParRole="0" Text="sample_air" Color="#ff6ce184" Identifier="{806491c0-c51a-4ecf-a034-15bcdf70f581}"/>
                                </Item>
                                <Item ModelType="Property" Tag="Abundance" DisplayName="Abundance">
                                    <Parameter ParType="double" ParRole="0" ParValue="1.000000000000e+00"/>
                                </Item>
                                <Item ModelType="Vector" Tag="Position Offset" DisplayName="Position Offset">
                                    <Parameter ParType="QString" ParRole="0" ParValue="(0, 0, 0)"/>
                                    <Item ModelType="Property" Tag="X" DisplayName="X">
                                        <Parameter ParType="double" ParRole="0" ParValue="0.000000000000e+00"/>
                                    </Item>
                                    <Item ModelType="Property" Tag="Y" DisplayName="Y">
                                        <Parameter ParType="double" ParRole="0" ParValue="0.000000000000e+00"/>
                                    </Item>
                                    <Item ModelType="Property" Tag="Z" DisplayName="Z">
                                        <Parameter ParType="double" ParRole="0" ParValue="0.000000000000e+00"/>
                                    </Item>
                                </Item>
                            </Item>
                        </Item>
                        <Item ModelType="ParticleCoreShell" Tag="Particle Tag" DisplayName="ParticleCoreShell">
                            <Item ModelType="Property" Tag="xpos" DisplayName="xpos">
                                <Parameter ParType="double" ParRole="0" ParValue="-3.720000000000e+02"/>
                            </Item>
                            <Item ModelType="Property" Tag="ypos" DisplayName="ypos">
                                <Parameter ParType="double" ParRole="0" ParValue="1.610000000000e+03"/>
                            </Item>
                            <Item ModelType="Property" Tag="Abundance" DisplayName="Abundance">
                                <Parameter ParType="double" ParRole="0" ParValue="1.000000000000e+00"/>
                            </Item>
                            <Item ModelType="Vector" Tag="Position Offset" DisplayName="Position Offset">
                                <Parameter ParType="QString" ParRole="0" ParValue="(0, 0, 50)"/>
                                <Item ModelType="Property" Tag="X" DisplayName="X">
                                    <Parameter ParType="double" ParRole="0" ParValue="0.000000000000e+00"/>
                                </Item>
                                <Item ModelType="Property" Tag="Y" DisplayName="Y">
                                    <Parameter ParType="double" ParRole="0" ParValue="0.000000000000e+00"/>
                                </Item>
                                <Item ModelType="Property" Tag="Z" DisplayName="Z">
                                    <Parameter ParType="double" ParRole="0" ParValue="5.000000000000e+01"/>
                                </Item>
                            </Item>
                            <Item ModelType="Particle" Tag="Core Tag" DisplayName="Particle">
                                <Item ModelType="Property" Tag="xpos" DisplayName="xpos">
                                    <Parameter ParType="double" ParRole="0" ParValue="-5.220000000000e+02"/>
                                </Item>
                                <Item ModelType="Property" Tag="ypos" DisplayName="ypos">
                                    <Parameter ParType="double" ParRole="0" ParValue="1.610000000000e+03"/>
                                </Item>
                                <Item ModelType="GroupProperty" Tag="Form Factor" DisplayName="Form Factor">
                                    <Parameter ParType="ComboProperty" ParRole="0" ParValue="9" ParExt="Aniso Pyramid;Box;Cone;Cone6;Cuboctahedron;Cylinder;Dodecahedron;Dot;Ellipsoidal Cylinder;Full Sphere;Full Spheroid;Hemi Ellipsoid;Icosahedron;Prism3;Prism6;Pyramid;Ripple1;Ripple2;Tetrahedron;Truncated Cube;Truncated Sphere;Truncated Spheroid"/>
                                    <Item ModelType="Cylinder" Tag="Item tag" DisplayName="Cylinder">
                                        <Item ModelType="Property" Tag="Radius" DisplayName="Radius">
                                            <Parameter ParType="double" ParRole="0" ParValue="8.000000000000e+00"/>
                                        </Item>
                                        <Item ModelType="Property" Tag="Height" DisplayName="Height">
                                            <Parameter ParType="double" ParRole="0" ParValue="1.600000000000e+01"/>
                                        </Item>
                                    </Item>
                                    <Item ModelType="FullSphere" Tag="Item tag" DisplayName="FullSphere">
                                        <Item ModelType="Property" Tag="Radius" DisplayName="Radius">
                                            <Parameter ParType="double" ParRole="0" ParValue="2.500000000000e+01"/>
                                        </Item>
                                    </Item>
                                </Item>
                                <Item ModelType="Property" Tag="Material" DisplayName="Material">
                                    <Parameter ParType="ExternalProperty" ParRole="0" Text="sample_gold" Color="#ffe9bbf1" Identifier="{43399bc1-26fa-420b-bcfe-77f84d8b5874}"/>
                                </Item>
                                <Item ModelType="Property" Tag="Abundance" DisplayName="Abundance">
                                    <Parameter ParType="double" ParRole="0" ParValue="1.000000000000e+00"/>
                                </Item>
                                <Item ModelType="Vector" Tag="Position Offset" DisplayName="Position Offset">
                                    <Parameter ParType="QString" ParRole="0" ParValue="(0, 0, 75)"/>
                                    <Item ModelType="Property" Tag="X" DisplayName="X">
                                        <Parameter ParType="double" ParRole="0" ParValue="0.000000000000e+00"/>
                                    </Item>
                                    <Item ModelType="Property" Tag="Y" DisplayName="Y">
                                        <Parameter ParType="double" ParRole="0" ParValue="0.000000000000e+00"/>
                                    </Item>
                                    <Item ModelType="Property" Tag="Z" DisplayName="Z">
                                        <Parameter ParType="double" ParRole="0" ParValue="7.500000000000e+01"/>
                                    </Item>
                                </Item>
                            </Item>
                            <Item ModelType="Particle" Tag="Shell Tag" DisplayName="Particle">
                                <Item ModelType="Property" Tag="xpos" DisplayName="xpos">
                                    <Parameter ParType="double" ParRole="0" ParValue="-5.220000000000e+02"/>
                                </Item>
                                <Item ModelType="Property" Tag="ypos" DisplayName="ypos">
                                    <Parameter ParType="double" ParRole="0" ParValue="1.760000000000e+03"/>
                                </Item>
                                <Item ModelType="GroupProperty" Tag="Form Factor" DisplayName="Form Factor">
                                    <Parameter ParType="ComboProperty" ParRole="0" ParValue="9" ParExt="Aniso Pyramid;Box;Cone;Cone6;Cuboctahedron;Cylinder;Dodecahedron;Dot;Ellipsoidal Cylinder;Full Sphere;Full Spheroid;Hemi Ellipsoid;Icosahedron;Prism3;Prism6;Pyramid;Ripple1;Ripple2;Tetrahedron;Truncated Cube;Truncated Sphere;Truncated Spheroid"/>
                                    <Item ModelType="Cylinder" Tag="Item tag" DisplayName="Cylinder">
                                        <Item ModelType="Property" Tag="Radius" DisplayName="Radius">
                                            <Parameter ParType="double" ParRole="0" ParValue="8.000000000000e+00"/>
                                        </Item>
                                        <Item ModelType="Property" Tag="Height" DisplayName="Height">
                                            <Parameter ParType="double" ParRole="0" ParValue="1.600000000000e+01"/>
                                        </Item>
                                    </Item>
                                    <Item ModelType="FullSphere" Tag="Item tag" DisplayName="FullSphere">
                                        <Item ModelType="Property" Tag="Radius" DisplayName="Radius">
                                            <Parameter ParType="double" ParRole="0" ParValue="1.000000000000e+02"/>
                                        </Item>
                                    </Item>
                                </Item>
                                <Item ModelType="Property" Tag="Material" DisplayName="Material">
                                    <Parameter ParType="ExternalProperty" ParRole="0" Text="sample_air" Color="#ff6ce184" Identifier="{806491c0-c51a-4ecf-a034-15bcdf70f581}"/>
                                </Item>
                                <Item ModelType="Property" Tag="Abundance" DisplayName="Abundance">
                                    <Parameter ParType="double" ParRole="0" ParValue="1.000000000000e+00"/>
                                </Item>
                                <Item ModelType="Vector" Tag="Position Offset" DisplayName="Position Offset">
                                    <Parameter ParType="QString" ParRole="0" ParValue="(0, 0, 0)"/>
                                    <Item ModelType="Property" Tag="X" DisplayName="X">
                                        <Parameter ParType="double" ParRole="0" ParValue="0.000000000000e+00"/>
                                    </Item>
                                    <Item ModelType="Property" Tag="Y" DisplayName="Y">
                                        <Parameter ParType="double" ParRole="0" ParValue="0.000000000000e+00"/>
                                    </Item>
                                    <Item ModelType="Property" Tag="Z" DisplayName="Z">
                                        <Parameter ParType="double" ParRole="0" ParValue="0.000000000000e+00"/>
                                    </Item>
                                </Item>
                            </Item>
                        </Item>
                        <Item ModelType="ParticleCoreShell" Tag="Particle Tag" DisplayName="ParticleCoreShell">
                            <Item ModelType="Property" Tag="xpos" DisplayName="xpos">
                                <Parameter ParType="double" ParRole="0" ParValue="-3.720000000000e+02"/>
                            </Item>
                            <Item ModelType="Property" Tag="ypos" DisplayName="ypos">
                                <Parameter ParType="double" ParRole="0" ParValue="1.760000000000e+03"/>
                            </Item>
                            <Item ModelType="Property" Tag="Abundance" DisplayName="Abundance">
                                <Parameter ParType="double" ParRole="0" ParValue="1.000000000000e+00"/>
                            </Item>
                            <Item ModelType="Vector" Tag="Position Offset" DisplayName="Position Offset">
                                <Parameter ParType="QString" ParRole="0" ParValue="(0, 200, 50)"/>
                                <Item ModelType="Property" Tag="X" DisplayName="X">
                                    <Parameter ParType="double" ParRole="0" ParValue="0.000000000000e+00"/>
                                </Item>
                                <Item ModelType="Property" Tag="Y" DisplayName="Y">
                                    <Parameter ParType="double" ParRole="0" ParValue="2.000000000000e+02"/>
                                </Item>
                                <Item ModelType="Property" Tag="Z" DisplayName="Z">
                                    <Parameter ParType="double" ParRole="0" ParValue="5.000000000000e+01"/>
                                </Item>
                            </Item>
                            <Item ModelType="Particle" Tag="Core Tag" DisplayName="Particle">
                                <Item ModelType="Property" Tag="xpos" DisplayName="xpos">
                                    <Parameter ParType="double" ParRole="0" ParValue="-5.220000000000e+02"/>
                                </Item>
                                <Item ModelType="Property" Tag="ypos" DisplayName="ypos">
                                    <Parameter ParType="double" ParRole="0" ParValue="1.760000000000e+03"/>
                                </Item>
                                <Item ModelType="GroupProperty" Tag="Form Factor" DisplayName="Form Factor">
                                    <Parameter ParType="ComboProperty" ParRole="0" ParValue="9" ParExt="Aniso Pyramid;Box;Cone;Cone6;Cuboctahedron;Cylinder;Dodecahedron;Dot;Ellipsoidal Cylinder;Full Sphere;Full Spheroid;Hemi Ellipsoid;Icosahedron;Prism3;Prism6;Pyramid;Ripple1;Ripple2;Tetrahedron;Truncated Cube;Truncated Sphere;Truncated Spheroid"/>
                                    <Item ModelType="Cylinder" Tag="Item tag" DisplayName="Cylinder">
                                        <Item ModelType="Property" Tag="Radius" DisplayName="Radius">
                                            <Parameter ParType="double" ParRole="0" ParValue="8.000000000000e+00"/>
                                        </Item>
                                        <Item ModelType="Property" Tag="Height" DisplayName="Height">
                                            <Parameter ParType="double" ParRole="0" ParValue="1.600000000000e+01"/>
                                        </Item>
                                    </Item>
                                    <Item ModelType="FullSphere" Tag="Item tag" DisplayName="FullSphere">
                                        <Item ModelType="Property" Tag="Radius" DisplayName="Radius">
                                            <Parameter ParType="double" ParRole="0" ParValue="2.500000000000e+01"/>
                                        </Item>
                                    </Item>
                                </Item>
                                <Item ModelType="Property" Tag="Material" DisplayName="Material">
                                    <Parameter ParType="ExternalProperty" ParRole="0" Text="sample_gold" Color="#ffe9bbf1" Identifier="{43399bc1-26fa-420b-bcfe-77f84d8b5874}"/>
                                </Item>
                                <Item ModelType="Property" Tag="Abundance" DisplayName="Abundance">
                                    <Parameter ParType="double" ParRole="0" ParValue="1.000000000000e+00"/>
                                </Item>
                                <Item ModelType="Vector" Tag="Position Offset" DisplayName="Position Offset">
                                    <Parameter ParType="QString" ParRole="0" ParValue="(0, 0, 75)"/>
                                    <Item ModelType="Property" Tag="X" DisplayName="X">
                                        <Parameter ParType="double" ParRole="0" ParValue="0.000000000000e+00"/>
                                    </Item>
                                    <Item ModelType="Property" Tag="Y" DisplayName="Y">
                                        <Parameter ParType="double" ParRole="0" ParValue="0.000000000000e+00"/>
                                    </Item>
                                    <Item ModelType="Property" Tag="Z" DisplayName="Z">
                                        <Parameter ParType="double" ParRole="0" ParValue="7.500000000000e+01"/>
                                    </Item>
                                </Item>
                            </Item>
                            <Item ModelType="Particle" Tag="Shell Tag" DisplayName="Particle">
                                <Item ModelType="Property" Tag="xpos" DisplayName="xpos">
                                    <Parameter ParType="double" ParRole="0" ParValue="-5.220000000000e+02"/>
                                </Item>
                                <Item ModelType="Property" Tag="ypos" DisplayName="ypos">
                                    <Parameter ParType="double" ParRole="0" ParValue="1.910000000000e+03"/>
                                </Item>
                                <Item ModelType="GroupProperty" Tag="Form Factor" DisplayName="Form Factor">
                                    <Parameter ParType="ComboProperty" ParRole="0" ParValue="9" ParExt="Aniso Pyramid;Box;Cone;Cone6;Cuboctahedron;Cylinder;Dodecahedron;Dot;Ellipsoidal Cylinder;Full Sphere;Full Spheroid;Hemi Ellipsoid;Icosahedron;Prism3;Prism6;Pyramid;Ripple1;Ripple2;Tetrahedron;Truncated Cube;Truncated Sphere;Truncated Spheroid"/>
                                    <Item ModelType="Cylinder" Tag="Item tag" DisplayName="Cylinder">
                                        <Item ModelType="Property" Tag="Radius" DisplayName="Radius">
                                            <Parameter ParType="double" ParRole="0" ParValue="8.000000000000e+00"/>
                                        </Item>
                                        <Item ModelType="Property" Tag="Height" DisplayName="Height">
                                            <Parameter ParType="double" ParRole="0" ParValue="1.600000000000e+01"/>
                                        </Item>
                                    </Item>
                                    <Item ModelType="FullSphere" Tag="Item tag" DisplayName="FullSphere">
                                        <Item ModelType="Property" Tag="Radius" DisplayName="Radius">
                                            <Parameter ParType="double" ParRole="0" ParValue="1.000000000000e+02"/>
                                        </Item>
                                    </Item>
                                </Item>
                                <Item ModelType="Property" Tag="Material" DisplayName="Material">
                                    <Parameter ParType="ExternalProperty" ParRole="0" Text="sample_air" Color="#ff6ce184" Identifier="{806491c0-c51a-4ecf-a034-15bcdf70f581}"/>
                                </Item>
                                <Item ModelType="Property" Tag="Abundance" DisplayName="Abundance">
                                    <Parameter ParType="double" ParRole="0" ParValue="1.000000000000e+00"/>
                                </Item>
                                <Item ModelType="Vector" Tag="Position Offset" DisplayName="Position Offset">
                                    <Parameter ParType="QString" ParRole="0" ParValue="(0, 0, 0)"/>
                                    <Item ModelType="Property" Tag="X" DisplayName="X">
                                        <Parameter ParType="double" ParRole="0" ParValue="0.000000000000e+00"/>
                                    </Item>
                                    <Item ModelType="Property" Tag="Y" DisplayName="Y">
                                        <Parameter ParType="double" ParRole="0" ParValue="0.000000000000e+00"/>
                                    </Item>
                                    <Item ModelType="Property" Tag="Z" DisplayName="Z">
                                        <Parameter ParType="double" ParRole="0" ParValue="0.000000000000e+00"/>
                                    </Item>
                                </Item>
                            </Item>
                        </Item>
                        <Item ModelType="ParticleCoreShell" Tag="Particle Tag" DisplayName="ParticleCoreShell">
                            <Item ModelType="Property" Tag="xpos" DisplayName="xpos">
                                <Parameter ParType="double" ParRole="0" ParValue="-3.720000000000e+02"/>
                            </Item>
                            <Item ModelType="Property" Tag="ypos" DisplayName="ypos">
                                <Parameter ParType="double" ParRole="0" ParValue="1.910000000000e+03"/>
                            </Item>
                            <Item ModelType="Property" Tag="Abundance" DisplayName="Abundance">
                                <Parameter ParType="double" ParRole="0" ParValue="1.000000000000e+00"/>
                            </Item>
                            <Item ModelType="Vector" Tag="Position Offset" DisplayName="Position Offset">
                                <Parameter ParType="QString" ParRole="0" ParValue="(200, 0, 50)"/>
                                <Item ModelType="Property" Tag="X" DisplayName="X">
                                    <Parameter ParType="double" ParRole="0" ParValue="2.000000000000e+02"/>
                                </Item>
                                <Item ModelType="Property" Tag="Y" DisplayName="Y">
                                    <Parameter ParType="double" ParRole="0" ParValue="0.000000000000e+00"/>
                                </Item>
                                <Item ModelType="Property" Tag="Z" DisplayName="Z">
                                    <Parameter ParType="double" ParRole="0" ParValue="5.000000000000e+01"/>
                                </Item>
                            </Item>
                            <Item ModelType="Particle" Tag="Core Tag" DisplayName="Particle">
                                <Item ModelType="Property" Tag="xpos" DisplayName="xpos">
                                    <Parameter ParType="double" ParRole="0" ParValue="-5.220000000000e+02"/>
                                </Item>
                                <Item ModelType="Property" Tag="ypos" DisplayName="ypos">
                                    <Parameter ParType="double" ParRole="0" ParValue="1.910000000000e+03"/>
                                </Item>
                                <Item ModelType="GroupProperty" Tag="Form Factor" DisplayName="Form Factor">
                                    <Parameter ParType="ComboProperty" ParRole="0" ParValue="9" ParExt="Aniso Pyramid;Box;Cone;Cone6;Cuboctahedron;Cylinder;Dodecahedron;Dot;Ellipsoidal Cylinder;Full Sphere;Full Spheroid;Hemi Ellipsoid;Icosahedron;Prism3;Prism6;Pyramid;Ripple1;Ripple2;Tetrahedron;Truncated Cube;Truncated Sphere;Truncated Spheroid"/>
                                    <Item ModelType="Cylinder" Tag="Item tag" DisplayName="Cylinder">
                                        <Item ModelType="Property" Tag="Radius" DisplayName="Radius">
                                            <Parameter ParType="double" ParRole="0" ParValue="8.000000000000e+00"/>
                                        </Item>
                                        <Item ModelType="Property" Tag="Height" DisplayName="Height">
                                            <Parameter ParType="double" ParRole="0" ParValue="1.600000000000e+01"/>
                                        </Item>
                                    </Item>
                                    <Item ModelType="FullSphere" Tag="Item tag" DisplayName="FullSphere">
                                        <Item ModelType="Property" Tag="Radius" DisplayName="Radius">
                                            <Parameter ParType="double" ParRole="0" ParValue="2.500000000000e+01"/>
                                        </Item>
                                    </Item>
                                </Item>
                                <Item ModelType="Property" Tag="Material" DisplayName="Material">
                                    <Parameter ParType="ExternalProperty" ParRole="0" Text="sample_gold" Color="#ffe9bbf1" Identifier="{43399bc1-26fa-420b-bcfe-77f84d8b5874}"/>
                                </Item>
                                <Item ModelType="Property" Tag="Abundance" DisplayName="Abundance">
                                    <Parameter ParType="double" ParRole="0" ParValue="1.000000000000e+00"/>
                                </Item>
                                <Item ModelType="Vector" Tag="Position Offset" DisplayName="Position Offset">
                                    <Parameter ParType="QString" ParRole="0" ParValue="(0, 0, 75)"/>
                                    <Item ModelType="Property" Tag="X" DisplayName="X">
                                        <Parameter ParType="double" ParRole="0" ParValue="0.000000000000e+00"/>
                                    </Item>
                                    <Item ModelType="Property" Tag="Y" DisplayName="Y">
                                        <Parameter ParType="double" ParRole="0" ParValue="0.000000000000e+00"/>
                                    </Item>
                                    <Item ModelType="Property" Tag="Z" DisplayName="Z">
                                        <Parameter ParType="double" ParRole="0" ParValue="7.500000000000e+01"/>
                                    </Item>
                                </Item>
                            </Item>
                            <Item ModelType="Particle" Tag="Shell Tag" DisplayName="Particle">
                                <Item ModelType="Property" Tag="xpos" DisplayName="xpos">
                                    <Parameter ParType="double" ParRole="0" ParValue="-5.220000000000e+02"/>
                                </Item>
                                <Item ModelType="Property" Tag="ypos" DisplayName="ypos">
                                    <Parameter ParType="double" ParRole="0" ParValue="2.060000000000e+03"/>
                                </Item>
                                <Item ModelType="GroupProperty" Tag="Form Factor" DisplayName="Form Factor">
                                    <Parameter ParType="ComboProperty" ParRole="0" ParValue="9" ParExt="Aniso Pyramid;Box;Cone;Cone6;Cuboctahedron;Cylinder;Dodecahedron;Dot;Ellipsoidal Cylinder;Full Sphere;Full Spheroid;Hemi Ellipsoid;Icosahedron;Prism3;Prism6;Pyramid;Ripple1;Ripple2;Tetrahedron;Truncated Cube;Truncated Sphere;Truncated Spheroid"/>
                                    <Item ModelType="Cylinder" Tag="Item tag" DisplayName="Cylinder">
                                        <Item ModelType="Property" Tag="Radius" DisplayName="Radius">
                                            <Parameter ParType="double" ParRole="0" ParValue="8.000000000000e+00"/>
                                        </Item>
                                        <Item ModelType="Property" Tag="Height" DisplayName="Height">
                                            <Parameter ParType="double" ParRole="0" ParValue="1.600000000000e+01"/>
                                        </Item>
                                    </Item>
                                    <Item ModelType="FullSphere" Tag="Item tag" DisplayName="FullSphere">
                                        <Item ModelType="Property" Tag="Radius" DisplayName="Radius">
                                            <Parameter ParType="double" ParRole="0" ParValue="1.000000000000e+02"/>
                                        </Item>
                                    </Item>
                                </Item>
                                <Item ModelType="Property" Tag="Material" DisplayName="Material">
                                    <Parameter ParType="ExternalProperty" ParRole="0" Text="sample_air" Color="#ff6ce184" Identifier="{806491c0-c51a-4ecf-a034-15bcdf70f581}"/>
                                </Item>
                                <Item ModelType="Property" Tag="Abundance" DisplayName="Abundance">
                                    <Parameter ParType="double" ParRole="0" ParValue="1.000000000000e+00"/>
                                </Item>
                                <Item ModelType="Vector" Tag="Position Offset" DisplayName="Position Offset">
                                    <Parameter ParType="QString" ParRole="0" ParValue="(0, 0, 0)"/>
                                    <Item ModelType="Property" Tag="X" DisplayName="X">
                                        <Parameter ParType="double" ParRole="0" ParValue="0.000000000000e+00"/>
                                    </Item>
                                    <Item ModelType="Property" Tag="Y" DisplayName="Y">
                                        <Parameter ParType="double" ParRole="0" ParValue="0.000000000000e+00"/>
                                    </Item>
                                    <Item ModelType="Property" Tag="Z" DisplayName="Z">
                                        <Parameter ParType="double" ParRole="0" ParValue="0.000000000000e+00"/>
                                    </Item>
                                </Item>
                            </Item>
                        </Item>
                        <Item ModelType="ParticleCoreShell" Tag="Particle Tag" DisplayName="ParticleCoreShell">
                            <Item ModelType="Property" Tag="xpos" DisplayName="xpos">
                                <Parameter ParType="double" ParRole="0" ParValue="-3.720000000000e+02"/>
                            </Item>
                            <Item ModelType="Property" Tag="ypos" DisplayName="ypos">
                                <Parameter ParType="double" ParRole="0" ParValue="2.060000000000e+03"/>
                            </Item>
                            <Item ModelType="Property" Tag="Abundance" DisplayName="Abundance">
                                <Parameter ParType="double" ParRole="0" ParValue="1.000000000000e+00"/>
                            </Item>
                            <Item ModelType="Vector" Tag="Position Offset" DisplayName="Position Offset">
                                <Parameter ParType="QString" ParRole="0" ParValue="(200, 200, 50)"/>
                                <Item ModelType="Property" Tag="X" DisplayName="X">
                                    <Parameter ParType="double" ParRole="0" ParValue="2.000000000000e+02"/>
                                </Item>
                                <Item ModelType="Property" Tag="Y" DisplayName="Y">
                                    <Parameter ParType="double" ParRole="0" ParValue="2.000000000000e+02"/>
                                </Item>
                                <Item ModelType="Property" Tag="Z" DisplayName="Z">
                                    <Parameter ParType="double" ParRole="0" ParValue="5.000000000000e+01"/>
                                </Item>
                            </Item>
                            <Item ModelType="Particle" Tag="Core Tag" DisplayName="Particle">
                                <Item ModelType="Property" Tag="xpos" DisplayName="xpos">
                                    <Parameter ParType="double" ParRole="0" ParValue="-5.220000000000e+02"/>
                                </Item>
                                <Item ModelType="Property" Tag="ypos" DisplayName="ypos">
                                    <Parameter ParType="double" ParRole="0" ParValue="2.060000000000e+03"/>
                                </Item>
                                <Item ModelType="GroupProperty" Tag="Form Factor" DisplayName="Form Factor">
                                    <Parameter ParType="ComboProperty" ParRole="0" ParValue="9" ParExt="Aniso Pyramid;Box;Cone;Cone6;Cuboctahedron;Cylinder;Dodecahedron;Dot;Ellipsoidal Cylinder;Full Sphere;Full Spheroid;Hemi Ellipsoid;Icosahedron;Prism3;Prism6;Pyramid;Ripple1;Ripple2;Tetrahedron;Truncated Cube;Truncated Sphere;Truncated Spheroid"/>
                                    <Item ModelType="Cylinder" Tag="Item tag" DisplayName="Cylinder">
                                        <Item ModelType="Property" Tag="Radius" DisplayName="Radius">
                                            <Parameter ParType="double" ParRole="0" ParValue="8.000000000000e+00"/>
                                        </Item>
                                        <Item ModelType="Property" Tag="Height" DisplayName="Height">
                                            <Parameter ParType="double" ParRole="0" ParValue="1.600000000000e+01"/>
                                        </Item>
                                    </Item>
                                    <Item ModelType="FullSphere" Tag="Item tag" DisplayName="FullSphere">
                                        <Item ModelType="Property" Tag="Radius" DisplayName="Radius">
                                            <Parameter ParType="double" ParRole="0" ParValue="2.500000000000e+01"/>
                                        </Item>
                                    </Item>
                                </Item>
                                <Item ModelType="Property" Tag="Material" DisplayName="Material">
                                    <Parameter ParType="ExternalProperty" ParRole="0" Text="sample_gold" Color="#ffe9bbf1" Identifier="{43399bc1-26fa-420b-bcfe-77f84d8b5874}"/>
                                </Item>
                                <Item ModelType="Property" Tag="Abundance" DisplayName="Abundance">
                                    <Parameter ParType="double" ParRole="0" ParValue="1.000000000000e+00"/>
                                </Item>
                                <Item ModelType="Vector" Tag="Position Offset" DisplayName="Position Offset">
                                    <Parameter ParType="QString" ParRole="0" ParValue="(0, 0, 75)"/>
                                    <Item ModelType="Property" Tag="X" DisplayName="X">
                                        <Parameter ParType="double" ParRole="0" ParValue="0.000000000000e+00"/>
                                    </Item>
                                    <Item ModelType="Property" Tag="Y" DisplayName="Y">
                                        <Parameter ParType="double" ParRole="0" ParValue="0.000000000000e+00"/>
                                    </Item>
                                    <Item ModelType="Property" Tag="Z" DisplayName="Z">
                                        <Parameter ParType="double" ParRole="0" ParValue="7.500000000000e+01"/>
                                    </Item>
                                </Item>
                            </Item>
                            <Item ModelType="Particle" Tag="Shell Tag" DisplayName="Particle">
                                <Item ModelType="Property" Tag="xpos" DisplayName="xpos">
                                    <Parameter ParType="double" ParRole="0" ParValue="-5.220000000000e+02"/>
                                </Item>
                                <Item ModelType="Property" Tag="ypos" DisplayName="ypos">
                                    <Parameter ParType="double" ParRole="0" ParValue="2.210000000000e+03"/>
                                </Item>
                                <Item ModelType="GroupProperty" Tag="Form Factor" DisplayName="Form Factor">
                                    <Parameter ParType="ComboProperty" ParRole="0" ParValue="9" ParExt="Aniso Pyramid;Box;Cone;Cone6;Cuboctahedron;Cylinder;Dodecahedron;Dot;Ellipsoidal Cylinder;Full Sphere;Full Spheroid;Hemi Ellipsoid;Icosahedron;Prism3;Prism6;Pyramid;Ripple1;Ripple2;Tetrahedron;Truncated Cube;Truncated Sphere;Truncated Spheroid"/>
                                    <Item ModelType="Cylinder" Tag="Item tag" DisplayName="Cylinder">
                                        <Item ModelType="Property" Tag="Radius" DisplayName="Radius">
                                            <Parameter ParType="double" ParRole="0" ParValue="8.000000000000e+00"/>
                                        </Item>
                                        <Item ModelType="Property" Tag="Height" DisplayName="Height">
                                            <Parameter ParType="double" ParRole="0" ParValue="1.600000000000e+01"/>
                                        </Item>
                                    </Item>
                                    <Item ModelType="FullSphere" Tag="Item tag" DisplayName="FullSphere">
                                        <Item ModelType="Property" Tag="Radius" DisplayName="Radius">
                                            <Parameter ParType="double" ParRole="0" ParValue="1.000000000000e+02"/>
                                        </Item>
                                    </Item>
                                </Item>
                                <Item ModelType="Property" Tag="Material" DisplayName="Material">
                                    <Parameter ParType="ExternalProperty" ParRole="0" Text="sample_air" Color="#ff6ce184" Identifier="{806491c0-c51a-4ecf-a034-15bcdf70f581}"/>
                                </Item>
                                <Item ModelType="Property" Tag="Abundance" DisplayName="Abundance">
                                    <Parameter ParType="double" ParRole="0" ParValue="1.000000000000e+00"/>
                                </Item>
                                <Item ModelType="Vector" Tag="Position Offset" DisplayName="Position Offset">
                                    <Parameter ParType="QString" ParRole="0" ParValue="(0, 0, 0)"/>
                                    <Item ModelType="Property" Tag="X" DisplayName="X">
                                        <Parameter ParType="double" ParRole="0" ParValue="0.000000000000e+00"/>
                                    </Item>
                                    <Item ModelType="Property" Tag="Y" DisplayName="Y">
                                        <Parameter ParType="double" ParRole="0" ParValue="0.000000000000e+00"/>
                                    </Item>
                                    <Item ModelType="Property" Tag="Z" DisplayName="Z">
                                        <Parameter ParType="double" ParRole="0" ParValue="0.000000000000e+00"/>
                                    </Item>
                                </Item>
                            </Item>
                        </Item>
                    </Item>
                    <Item ModelType="Interference2DLattice" Tag="Interference Tag" DisplayName="Interference2DLattice">
                        <Item ModelType="Property" Tag="xpos" DisplayName="xpos">
                            <Parameter ParType="double" ParRole="0" ParValue="-2.220000000000e+02"/>
                        </Item>
                        <Item ModelType="Property" Tag="ypos" DisplayName="ypos">
                            <Parameter ParType="double" ParRole="0" ParValue="1.160000000000e+03"/>
                        </Item>
                        <Item ModelType="Property" Tag="PositionVariance" DisplayName="PositionVariance">
                            <Parameter ParType="double" ParRole="0" ParValue="0.000000000000e+00"/>
                        </Item>
                        <Item ModelType="GroupProperty" Tag="LatticeType" DisplayName="LatticeType">
                            <Parameter ParType="ComboProperty" ParRole="0" ParValue="0" ParExt="Basic;Hexagonal;Square"/>
                            <Item ModelType="HexagonalLattice" Tag="Item tag" DisplayName="HexagonalLattice">
                                <Item ModelType="Property" Tag="LatticeLength" DisplayName="LatticeLength">
                                    <Parameter ParType="double" ParRole="0" ParValue="2.000000000000e+01"/>
                                </Item>
                                <Item ModelType="Property" Tag="Xi" DisplayName="Xi">
                                    <Parameter ParType="double" ParRole="0" ParValue="0.000000000000e+00"/>
                                </Item>
                            </Item>
                            <Item ModelType="BasicLattice" Tag="Item tag" DisplayName="BasicLattice">
                                <Item ModelType="Property" Tag="LatticeLength1" DisplayName="LatticeLength1">
                                    <Parameter ParType="double" ParRole="0" ParValue="1.300000000000e+03"/>
                                </Item>
                                <Item ModelType="Property" Tag="LatticeLength2" DisplayName="LatticeLength2">
                                    <Parameter ParType="double" ParRole="0" ParValue="2.000000000000e+02"/>
                                </Item>
                                <Item ModelType="Property" Tag="Alpha" DisplayName="Alpha">
                                    <Parameter ParType="double" ParRole="0" ParValue="9.000000000000e+01"/>
                                </Item>
                                <Item ModelType="Property" Tag="Xi" DisplayName="Xi">
                                    <Parameter ParType="double" ParRole="0" ParValue="0.000000000000e+00"/>
                                </Item>
                            </Item>
                        </Item>
                        <Item ModelType="GroupProperty" Tag="Decay Function" DisplayName="Decay Function">
                            <Parameter ParType="ComboProperty" ParRole="0" ParValue="0" ParExt="Cauchy 2D;Gauss 2D;Voigt 2D"/>
                            <Item ModelType="FTDecayFunction2DCauchy" Tag="Item tag" DisplayName="FTDecayFunction2DCauchy">
                                <Item ModelType="Property" Tag="DecayLengthX" DisplayName="DecayLengthX">
                                    <Parameter ParType="double" ParRole="0" ParValue="2.000000000000e+02"/>
                                </Item>
                                <Item ModelType="Property" Tag="DecayLengthY" DisplayName="DecayLengthY">
                                    <Parameter ParType="double" ParRole="0" ParValue="2.000000000000e+02"/>
                                </Item>
                                <Item ModelType="Property" Tag="Gamma" DisplayName="Gamma">
                                    <Parameter ParType="double" ParRole="0" ParValue="0.000000000000e+00"/>
                                </Item>
                                <Item ModelType="Property" Tag="Delta" DisplayName="Delta">
                                    <Parameter ParType="double" ParRole="0" ParValue="9.000000000000e+01"/>
                                </Item>
                            </Item>
                        </Item>
                        <Item ModelType="Property" Tag="Integration_over_xi" DisplayName="Integration_over_xi">
                            <Parameter ParType="bool" ParRole="0" ParValue="0"/>
                        </Item>
                    </Item>
                </Item>
            </Item>
        </Item>
    </SampleModel>
    <RealDataModel Name="DefaultName"/>
    <JobModel Name="DefaultName"/>
</BornAgain>
