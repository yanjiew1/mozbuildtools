#include <iostream>
#include <string>
#include <cstdio>
#include <cstdlib>
#include <cstring>
using namespace std;
void Os(string*&, int& );
void O1(string*&, int& );
void O2(string*&, int& );
void O3(string*&, int& );
void Options_add(string*& , int& , char* );
void string_and_c_str(string& ,char*);
#ifndef CMD
#define CMD "gcc"
#endif

int main(int argc, char* argv[])
{
  string *options=new string[argc];
  string options_to_use;
  int i;
  int disable_options_num=0;
  string* disable_options;
  int enable_options_num=0;
  string* enable_options;

  for(i=1;i<argc;i++)
   if ( strcmp(argv[i], "-Os") == 0 )
   {
    O2( enable_options, enable_options_num);
    Os( disable_options , disable_options_num);
   }
   else if ( strcmp(argv[i],"-O1") == 0)
    O1( enable_options , enable_options_num);
   else if ( strcmp(argv[i] , "-O") == 0)
    O1( enable_options , enable_options_num);
   else if ( strcmp(argv[i] , "-O2") == 0)
    O2( enable_options , enable_options_num);
   else if ( strcmp(argv[i] , "-O3") == 0)
    O3( enable_options , enable_options_num);
   else
    Options_add(enable_options,enable_options_num,argv[i]);
   string cmd = CMD;
   for(i=0;i<enable_options_num;i++)
   {
    int enable=1;
    for(int r=0;r<disable_options_num;r++)
     if(enable_options[i] == disable_options[r])
      enable=0;
    if ( enable )
     cmd=cmd+" "+enable_options[i];
   }
   system(cmd.c_str());
}

void Os(string*& in, int& num )
{
 int tmp_num;
 string* tmp;
 tmp_num=num+8;
 tmp=new string[tmp_num];
 if(num>0)
  for(int i=0;i<num;i++)
   *(tmp+i)=*(in+i);
 *(tmp+num-1+1)="-falign-functions";
 *(tmp+num-1+2)="-falign-jumps";
 *(tmp+num-1+3)="-falign-loops";
 *(tmp+num-1+4)="-falign-labels";
 *(tmp+num-1+5)="-freorder-blocks";
 *(tmp+num-1+6)="-freorder-blocks-and-partition";
 *(tmp+num-1+7)="-fprefetch-loop-arrays";
 *(tmp+num-1+8)="-ftree-vect-loop-version";
 if ( num > 0 )
  delete [] in;
 num=tmp_num;
 in=new string[num];
 for(int i=0;i<num;i++)
  *(in+i)=*(tmp+i);
 return;
}

void O1(string*& in, int& num)
{
 int tmp_num;
 string* tmp;
 tmp_num=num+24;
 tmp=new string[tmp_num];
 if(num>0)
  for(int i=0;i<num;i++)
   *(tmp+i)=*(in+i);
 *(tmp+num-1+1)="-fauto-inc-dec";
 *(tmp+num-1+2)="-fcprop-registers";
 *(tmp+num-1+3)="-fdce";
 *(tmp+num-1+4)="-fdefer-pop";
 *(tmp+num-1+5)="-fdelayed-branch";
 *(tmp+num-1+6)="-fdse";
 *(tmp+num-1+7)="-fguess-branch-probability";
 *(tmp+num-1+8)="-fif-conversion2";
 *(tmp+num-1+9)="-fif-conversion";
 *(tmp+num-1+10)="-finline-small-functions";
 *(tmp+num-1+11)="-fipa-pure-const";
 *(tmp+num-1+12)="-fipa-reference";
 *(tmp+num-1+13)="-fmerge-constants";
 *(tmp+num-1+14)="-fsplit-wide-types";
 *(tmp+num-1+15)="-ftree-ccp";
 *(tmp+num-1+16)="-ftree-ch";
 *(tmp+num-1+17)="-ftree-copyrename";
 *(tmp+num-1+18)="-ftree-dce";
 *(tmp+num-1+19)="-ftree-dominator-opts";
 *(tmp+num-1+20)="-ftree-dse";
 *(tmp+num-1+21)="-ftree-fre";
 *(tmp+num-1+22)="-ftree-sra";
 *(tmp+num-1+23)="-ftree-ter";
 *(tmp+num-1+24)="-funit-at-a-time";
 if ( num > 0 )
  delete [] in;
 num=tmp_num;
 in=new string[num];
 for(int i=0;i<num;i++)
  *(in+i)=*(tmp+i);
 return;
}

void O2(string*& in, int& num)
{
 O1(in,num);
 int tmp_num;
 string* tmp;
 tmp_num=num+27;
 tmp=new string[tmp_num];
 if(num>0)
  for(int i=0;i<num;i++)
   *(tmp+i)=*(in+i);
 *(tmp+num-1+1)="-fthread-jumps";
 *(tmp+num-1+2)="-falign-functions";
 *(tmp+num-1+3)="-falign-jumps";
 *(tmp+num-1+4)="-falign-loops";
 *(tmp+num-1+5)="-falign-labels";
 *(tmp+num-1+6)="-freorder-blocks";
 *(tmp+num-1+7)="-fcaller-saves";
 *(tmp+num-1+8)="-fcrossjumping";
 *(tmp+num-1+9)="-fcse-follow-jumps";
 *(tmp+num-1+10)="-fcse-skip-blocks";
 *(tmp+num-1+11)="-fdelete-null-pointer-checks";
 *(tmp+num-1+12)="-fexpensive-optimizations";
 *(tmp+num-1+13)="-fgcse";
 *(tmp+num-1+14)="-fgcse-lm";
 *(tmp+num-1+15)="-foptimize-sibling-calls";
 *(tmp+num-1+16)="-fpeephole2";
 *(tmp+num-1+17)="-fregmove";
 *(tmp+num-1+18)="-freorder-functions";
 *(tmp+num-1+19)="-frerun-cse-after-loop";
 *(tmp+num-1+20)="-fsched-interblock";
 *(tmp+num-1+21)="-fsched-spec";
 *(tmp+num-1+22)="-fschedule-insns";
 *(tmp+num-1+23)="-fschedule-insns2";
 *(tmp+num-1+24)="-fstrict-aliasing";
 *(tmp+num-1+25)="-fstrict-overflow";
 *(tmp+num-1+26)="-ftree-pre";
 *(tmp+num-1+27)="-ftree-vrp";
 if ( num > 0 )
  delete [] in;
 num=tmp_num;
 in=new string[num];
 for(int i=0;i<num;i++)
  *(in+i)=*(tmp+i);
 return;
}

void O3(string*& in, int& num)
{
 O2(in,num);
 int tmp_num;
 string* tmp;
 tmp_num=num+5;
 tmp=new string[tmp_num];
 if(num>0)
  for(int i=0;i<num;i++)
   *(tmp+i)=*(in+i);
 *(tmp+num-1+1)="-finline-functions";
 *(tmp+num-1+2)="-funswitch-loops";
 *(tmp+num-1+3)="-fpredictive-commoning";
 *(tmp+num-1+4)="-fgcse-after-reload";
 *(tmp+num-1+5)="-ftree-vectorize";
 if ( num > 0 )
  delete [] in;
 num=tmp_num;
 in=new string[num];
 for(int i=0;i<num;i++)
  *(in+i)=*(tmp+i);
 return;
}

void Options_add(string*& in, int& num, char* input)
{
 int tmp_num;
 string* tmp;
 tmp_num=num+1;
 tmp=new string[tmp_num];
 if(num>0)
  for(int i=0;i<num;i++)
   *(tmp+i)=*(in+i);
 string_and_c_str(*(tmp+num-1+1), input);
 if ( num > 0 )
  delete [] in;
 num=tmp_num;
 in=new string[num];
 for(int i=0;i<num;i++)
  *(in+i)=*(tmp+i);
 return;
}

void string_and_c_str(string& a,char* b)
{
  int num=0;
  char tmp=b[0];
  a="";
  while(tmp!='\0')
  {
   a=a + b[num];
   num++;
   tmp=b[num];
  }
  return;
}