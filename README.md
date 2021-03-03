# Talend-PCSCOL-exemple-extractionOF-recuperationToken
Exemple Talend élémentaire d'appel de l'API d'extraction v1 des offres de formation d'une période de mise en oeuvre donnée v1 puis d'interprétation du JSON obtenu + Exemple Talend élémentaire de récupération du token JWT d'authentification auprès des APIs Pégase

**Objectif** : développer un job d'extraction des offres de formation Pégase mises en oeuvre sur une période donnée

**Prérequis** : Java 8 et installation de Talend Open Studio For Data Integration:
- Windows et MAC: https://www.talend.com/fr/download/thankyou-fr/data-integration-windows/
- Linux :
	o https://www.talend.com/products/data-integration-manuals-release-notes/
	o https://help.talend.com/r/RzdULPz3cf8xOi2hTwk6LQ/IK8ah80s5BANqaRiCzD4lA

**Environnement de travail** : Environnement détenant l'autorisation sur le compte de service svc-api d'utiliser l'API d'extraction des offres de formation sur une période mise en oeuvre donnée

**Obtention manuelle du token JWT d'authentification auprès des APIs Pégase**
curl -d "username=svc-api&password=MOTDEPASSESVCAPI&token=true" -H "Content-Type: application/x-www-form-urlencoded" -X POST https://authn-app.bas-mdw.pc-scol.fr/cas/v1/tickets


**Atelier**
1) Besoin : extraire offres de formation Pégase mises en oeuvre sur un période donnée
Offre de formation : F-ING-HYD
Période : PER-2020

2) recherche API répondant à notre besoin dans catalogue des APIs mis à dispo : https://mof.bas-mdw.pc-scol.fr/swagger-ui.html
	Information récupérée:
		- https://mof.bas-mdw.pc-scol.fr
		- /api/v1/mof/extractions/{codeStructureEtablissement}/periodes/{codePeriode}/arbresFormations
		- besoin authentification
		- GET
		- {codeStructureEtablissement} et {codePeriode}
		- retour JSON

3) développer l'appel dans Talend Studio

4) Exercices complémentaires :
- utiliser des variables de contexte
- générer un token JWT directement dans Talend
- implémenter la récursivité pour analyser tous les niveaux du JSON retournés :
	o éviter l'auto-appel
	o passer par un fichier temporaire stockant les niveaux (à extraire puis extraits) au fur et à mesure. Le principe est expliqué ici: https://talendbestpractices.com/2020/06/22/recursive-loop-in-talend/
