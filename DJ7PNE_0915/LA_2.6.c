#include <stdlib.h>
#include <string.h>
#include <stdio.h>

struct gepjarmu{
    char rendszam[7];
    char tipus[20];
    int ar;
}Auto[100];

int ossz=0;
int db=0;

int main(){

    FILE *fp;
    fp = fopen("autok.bin", "rb");

    if(!fp){
        fp = fopen("autok.bin", "wb");
        fclose(fp);
        printf("nem volt fajl letrehozva ezert letrehoztem");
        exit(0);
    }

    int szam=0;
    printf("Hany adatot szeretne felvinni? ");
    scanf("%d", &szam);

    int i=0;

    while(i<szam){

        printf("Adja meg az auto rendszamat! ");
        scanf("%s", &Auto[i].rendszam);

        printf("Adja meg az auto szinet! ");
        scanf("%s", &Auto[i].tipus);

        printf("Adja meg az auto arat! ");
        scanf("%d", &Auto[i].ar);

        fwrite(&(Auto[i]), sizeof(struct gepjarmu),1,fp);

        /*fwrite(&(Auto[i].rendszam), sizeof(Auto[i].rendszam), 1, fp);
        fwrite(&(Auto[i].tipus), sizeof(Auto[i].tipus), 1, fp);
        fwrite(&(Auto[i].ar), sizeof(int), 1, fp);*/
        fwrite("\n", 1, 1, fp);

        i++;
        ossz++;
    }

    fclose(fp);

    piros();
    atlag();
    max();
}

int piros(){

    FILE *fp = fopen("autok.bin", "rb");
    char ch;
    int pirosak = 0;
    fseek(fp, (ossz-1)*sizeof(struct gepjarmu),0);
    fread(&(Auto[ossz]), sizeof(struct gepjarmu), 1,fp);

    for(int i=0; i<ossz; i++)
    {
            if (strcmp(Auto[i].tipus, "piros")==0)
            {
                pirosak++;
            }

            fread(&(Auto[i]), sizeof(struct gepjarmu), 1, fp);

    }

    printf("\nPiros autok szama: %d", pirosak);

    fclose(fp);

}

void atlag(){

    FILE *fp = fopen("autok.bin", "rb");
    int sum = 0;

    for(int i=0; i<ossz; i++)
    {
        fseek(fp, (ossz-1)*sizeof(struct gepjarmu),0);
        sum = sum + Auto[i].ar;
    }

    double atlag = sum/ossz;

    printf("\nAz autok atlagara: %.2f", atlag);

    fclose(fp);

}

void max(){

    FILE *fp = fopen("autok.bin", "rb");
    int max = Auto[0].ar;
    int index=0;

    for(int i=0; i<ossz; i++)
    {
        fseek(fp, (ossz-1)*sizeof(struct gepjarmu),0);
        if(Auto[i].ar>max){
            max = Auto[i].ar;
            index = i;
        }
    }

    printf("\nA legdragabb auto adatai \nrsz: %s\nszin: %s\nar: %d\n", Auto[index].rendszam, Auto[index].tipus, Auto[index].ar);

    fclose(fp);

}
