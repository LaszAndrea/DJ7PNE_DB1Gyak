#include <stdlib.h>
#include <string.h>
#include <stdio.h>

int ossz=0;

struct gepjarmu{
    char rendszam[7];
    char tipus[20];
    int ar;
}Auto[100];


int main(){

    int szam=0;

    printf("Hany adatot szeretne felvinni? ");
    scanf("%d", &szam);

    FILE *fp;
    fp = fopen("autok.bin", "rb");

    int i=ossz;

    while(i<szam+ossz){

        printf("Adja meg az auto rendszamat! ");
        scanf("%s", &Auto[i].rendszam);

        printf("Adja meg az auto szinet! ");
        scanf("%s", &Auto[i].tipus);

        printf("Adja meg az auto arat! ");
        scanf("%d", &Auto[i].ar);

        fwrite(&(Auto[i].rendszam), sizeof(Auto[i].rendszam), 1, fp);
        fwrite(&(Auto[i].tipus), sizeof(Auto[i].tipus), 1, fp);
        fwrite(&(Auto[i].ar), sizeof(int), 1, fp);
        fwrite("\n", 1, 1, fp);

        i++;
    }

    ossz = ossz+szam;

    fclose(fp);

    pl3_olvas();

    visszair();

    return 0;

}


void pl3_olvas(){

    FILE *fp;
    fp = fopen("autok.bin", "rb");
    int szam=0;

    if(fp == NULL){
        printf("nem sikerult megnyitni az allomanyt");
    }
    else{
        printf("Hanyadik rekordot szeretne visszaolvasni? Eddig %d adat van az adatbazisban. ", ossz);
        scanf("%d", &szam);
        fseek(fp, (szam-1)*sizeof(struct gepjarmu),0);

        fread(&(Auto[szam]), sizeof(struct gepjarmu), 1,fp);
            printf("rsz: %s\n", Auto[szam-1].rendszam);
            printf("szin: %s\n", Auto[szam-1].tipus);
            printf("ar: %d\n", Auto[szam-1].ar);
    }

    fclose(fp);

}

void visszair(){

    FILE *fp = fopen("autok.bin", "wb");

    for(int i=0; i<ossz; i++){
        fwrite(&(Auto[i].rendszam), sizeof(Auto[i].rendszam), 1, fp);
        fwrite(&(Auto[i].tipus), sizeof(Auto[i].tipus), 1, fp);
        fwrite(&(Auto[i].ar), sizeof(Auto[i].ar), 1, fp);
        fwrite("\n", 1, 1, fp);
    }

}

