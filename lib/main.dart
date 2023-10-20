import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool opacidade = true;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Tarefas'),
          backgroundColor: Colors.blue,
        ),
        body: AnimatedOpacity(
          duration: Duration(milliseconds: 1000),
          opacity: opacidade ? 1 : 0,
          child: Container(
            margin: EdgeInsets.only(top: 30.0),
            child: ListView(
              children: [
                Task(
                  nome: 'Aprendendo Flutter',
                  foto:
                      'https://pbs.twimg.com/media/Eu7m692XIAEvxxP?format=png&name=large',
                  dificuldade: 4,
                ),
                Task(
                  nome: 'Aprendendo Luta',
                  foto:
                      'data:image/jpeg;base64,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',
                  dificuldade: 5,
                ),
                Task(
                  nome: 'Aprendendo Inglês',
                  foto:
                      'data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAOEAAADhCAMAAAAJbSJIAAABU1BMVEX////wEHbqaqr79f8AAAD//f/v3xb99/8AAB3vbK3/+//zbrAAABkAABsAACEUACcAABcAABQQACYAABEAACLvAG8WAygAAA3pYabwAHgJACQOACPvAG0AAAYKACHgZaTYYZ5ZJk3MW5crEDI8GDy6U4vFWJKXQ3SHO2pzMl36EHpPIUelSX3w7POUjprHwsthWWqzrbj93+zsd7Hm4elqY3PZ1N2jnalDOk9/eIZCGz8kDC9tL1nyOIj+7PT80uP4mr/zTJLv6Ar5p8f2hLG7tsAxJj9XT2GIgY94cYDbDm70aKH6vdU/BTOfR3n1d6rwo0DwM21lB0Dvjb05L0UnHDYfES9+ADz6S5SJAEqkClnHDWZ7CEmiC1gsBC72h7P5ss/7x9xSADPwTGfwuDLvwizv0x7wcljwXmDvrzrwflPwkkjwjUvv2BnwLXDv8ADIkrGUm9FdAAAaKElEQVR4nO1d+1fjRpYWRmqVJOttJJDxG/MI2OC0wYBpukMPryRDJgt4Zya7k+5JevLY3cz+/z/trZJKUkkyj96MZPpwz8lJcNM5+riP7363bgmOe7Zne7Zne7Zne7ZnC613MSr6Ef6lJvQ1gz8o+in+hTbwzKpmuZdFP8e/yvb2axYarzmW/YlCvCjXvfJ6SWlrnybEvTPTUltNpVSS2sgyN74u+oF+bxvxVc3ZAnwlDNGz0L//+XXRz/R7Wm/H1Y2jhlTyTVrVdO0vy199Ohj3xqpnBA4kpnRtXfvPzxa++rzoR/t9bOBWtZVmDCBA3DJ09NfPFpY/CYz9mq4elaQSY8qaqmt//Wxu4RPw40FNt6+UUtKUddWqfPfZ3NzC3DdPG+OubandNECA2EJW5cs5sCftR2HH9Jy2lAEQIB5WLGuO2BPOx3PTGzezAZZKjY7n/XEuwPhE/bgLABvTAALza3rl3z57yhgvba+TBigpIfN3DV37DwrxCcZq383yoLTV2qLcoawZDjD/3BPFOKhZWkYOKkeofEg/hy8c7bsIIsTq0+GOvZplrqYBSl2ooJ4W1tcVz7K+nIsZ8ONx0c/+IOtNqupWmgeltmo5m8gqB+Clhm55f5tjbGHhe7Hox3+A7ZbRRgbAhmeZXWUDWXoQqNKq6UQFlWJceisUDeA+G7jWShZNrHgYOED0DuPV5i8JiHMLr2ZcIvfKup1ZZTRvhfzHZgWtBy5WWhpbbQKMX8x0ydlFaC0ZoxK4q6zTGuNYZpP+SQdqz5dJhHNzyzNccrZdq5Muoo2u4RiBzJC6qkbzVGoj3ftjyok4Hd/Majqe19VuMkbbfMfRtRb1rHTohT8EZct0Yr3NE0jHbTesIzEfbmh6zLPKOvIaUX4C8f81C+Lc8kym4y5KuxDqp+agSApLq3Yr9j1A/FmpSDB+P3Pp2DOscYoKla2y41lRL1OSSKGRaCpW9FBJpdPxbdGQEjayMwppE2RES7cqiY/XAsjKluFUMlPRT8fZGjye141GKWljy1tRtlSfDn10kqQcmV4YxMhBaVYMQ/WrWQpV09tMubCl4T5NaVVQxBGb7XUVrQfNmyJBKjpTUhG7ceGNXDQwakMerWXMDknxaWo67bmVTdTxtM0AYPeo1KzoqQaVDdVZYY5tV20nPLhq6GWSmsqWrR35TmwAeXhjmqVerQsxzMjhDIwzwhzb7jgBsIF0iktZc/y4lK6QY3nBCEBaqYwlkora9Dgl6fiHWUjHbb6VCNJDLyowUkAQSsuzKrSQHiEDx7Cy4mV2b3E3zoKu2uPX2TOKI82ykkJDudJ01KVMoVbID0WCNK2khNTspaOwy4yAQf/pKDnOUK5MnZKmtIosz/8JQD+uZwipZKgWn44Mlq7pmMlxhrJmOo7R9r9ojC2VdnO4W/3bPQCxH4vWVdexKtNWdWM9BVB1QGdQ1tAqEX+C5Lg3Tkk6FsuO7xcjNGMrNa/BQthyrEPF9xoEZqwFamiWenc9pRjfFYjwOAIDUZdscCBEdW2z6qchHnszQgS403oAQLDlV++LgxiFqZOaCuPKU+62PGO1RKheR2wQS+3GwxDiklNYQ/6ahmmzbHVYFwI16MaaAj0AgdPxMsTy4sJDMRZ3mvMyzCrdY3SGgqNyXVk1PDzPUKAh15L4wL54OMSFgkTH14ETpVal0mJC0NbRkaKsa7g7x1VGzZj8l0qvHooQn+YUQh1CiAjCcTNapGlAXoKckFYs1JakLtLVjCN+HKcPR1jUJkDoxK6tV3Ta5EiHFWvcwCLKWoEqU2GYRFGaq216tvjwOA0w5u5HgWaisqp59BwGxAOZCIOu0KCAOlaM6pXGumeapkWD9hFx6sdq7jUnZH2puaIRx4E/gwZO2vTQKq4yocySSmtIsyqa5oWFZ+lxEDHGnLnjOnr6FjKusGt0XEbh301kjaEXCNUT5OehapXHG+sbY5vO+h+Vij7GhXz58Thq3ZSW08bAagYZeUvrqLLeLUe9jNSueJrTlRRJKUXLU49LxQBkrrLjXQwiKSDS1pWfjmPoYxDm/QDgqmqhIynFGq/u78DTtvx9fgo5LDahBSDaIJ10PTZ0q1hqUn6Q7/v7lx+BceFVfm78fDH91NiFa8hxHDplg77HscpZAKWu63wMxLml/Dryd5kQlZbnONHBE7Sm6CiT9pWOV5kupO6otcvvcoOYilPy4JueEx7j4ylOZTOrcSPK6g7B/8MdGJdz8+JxlhPBh7pBiR2khuU0FEXJAom72ikz4qUfTz4sTIe4lFsuvk9DBCLUzXAfswENT1c5aq1vNZV0qDY1fcqMeOnFi5N/TEe48EVeCLk3SYhYAEftNj7IWFcaplE27PF6+qfRNRz0XSbCP528ePHhjjh9kxdCOZGKeME7ogbo46wx9KntrY0VS7fpcYcU8j7evBlnIvwWEJ786Q4v5taKs6lIBHBUOZWORYbdJQkadJ3MNUqkkx2HsnnFyz5WXPrwAiD+tDQ3JRsXvsoLYTTRIACRjlrR6HBL9fyvpKZllYPYVdqaFnEJ/EHyhH+J2M/gxBcvfnlx8sMUiPmNxiNWxJIX2rMIMQhhUlSlxrgant10VeYwHL5kWfG3Hz/8+Msvv/z4wreTX6eE6qv8luOuqRpeZQHCw9NRYyc8uwE3W2Xm9slamTmuWfrpny/ihiM124lvckNIq01Ds2IhSogRbREXgvTX/FGHgjUHO0JWNivxZRtSY+IIf55WbvIrNpxInCgdelocIB7EkWm3tKnpqB0ANHTmp0C+b2zFj2uWvv1HHOPJf01FmB8pkmoDZYVdBYOmzFrBgvAI6cGVDJyoWqqHg0+ZLdulpV/jGKdDzK95I72NAkqfmRwq6xqupMqG6gRSUVrVLO2wlDJogyrMss3S3E8fTkKQ02nxVY7HN28XpfYmu2UDaahtKHi9NEg8qQlVdCUNkBwOJ/belpa+/e/QkSe/TCs2ea4aQUFNNJ7KplXZwJtCgXiS2tiD2TKjCVX4uxQr/hxC/HEKxKUch4xpxQ8+9FpkYuxnWxNPizPx+UnspJ//w4t7vLjwTX4IY0du9KlBZIw7VqCFAaAHAKddsMEyMiWkln7CTjy5q9ws5zmZ+jz51G3D0fWACKWGNTVEfRunujdw0f8AuB9+ObmDFnNkDLZD9f1ScYIGTWrg/ag78EGWmnpq2QZrqJNvl3748WRqQc2xPeWiwwyKcCPaOFmpZNEE891rrp2UiqS/+Q2Kzs8fPnw7rT3N9cD/bRwi3jgN1r6VQy2bJhgvbm2lHh/Xmt/mfLmRDTBfxoia8JJ/lBgQodICgBkXiJrsAbkkpcbgSz//c5p6ir4n12OpOGdA6fCVBQj5rByUVo1K8rPUidTSr1Mb79CJf8gTYcQZeBes0/ATTM3KQXyYMU5+mD6umRqdkeXKGOEgXNqil0vwVDSFBAOM33CLIH7Ecc1cfgMNYv6AsQkAyUBKappWJeMeZlP3yll3wB95ckosX8bwpxrQSuv+rSBpBWRwBpKxZ7CNOr1cO/cRRxn5MgYpqO2aZW/5O1GqnhWjhxX2MENpXG2QeUBp8bt7lxfTTsz5OoP8siRtdALNe4UyrvFJQB+MEJbWy0grk65OmqA7V6WzLecrm8f0zJScjoZ9TeSwDRTU2QBfaVO1ENIN7EXohO64tTDNiXlqDGyx4wzCGgmAePONIftDzXO2ulalFbyi6I5bC9Mg5r0BFz/OGCcGVHgaZcfLqLSpeZ2Gomz6HQJ4+M5bC9mWq8bAFuttGmMvPj/Ea1TMobdyhEBDgkvHwdBY6mQIqXud+C5nhLETcKA+S90Ig7IBzx9f9scxW4GYlbpl/4yDCKnKY32Yc3vKMUpKIkNSCqjF5iUelNOrCrRNxbO3v898sYkvgytXpmX6bIfXFQ2mynQssmIrbRnRZSNoEx4fp8t5FxsxXly2gs197M5ynDzw7W9SXxp6tNzgX2B4dD19lTNCZqghNZr+lRLHYpaiwXM6GeQAC8bXwXGcPrqe5nhUE9jb1CG/tFlhl6IbSCfhC40BKaThm1/wjkrm8fedlvsa6nVyNEVuJsRjdNPzGUJpIXw9Q1nT6fs0muieS2BZTsydFBMjVGnV1gNC8BfElCt6mCNddbqS1Ng0yFm/VGrAF49fXpxbzv1CcWIvbBwmobQFSKVmJdxflMCaHU3dwMBXOx5WXh+xvLiQe5zG98KgmIQHwesmqEfl0NOiZgcPxU0sGZUuqvja8iPUcO5xGmtQyUuj6BU2AwoOfmdddOtdamgWefeitFr2aDY+HmH+9TTat2k4ejA9xSvuZltZLYd3hrF1PJWI/oZjITq/+YhUzF1kRNWm6wbDRcwEeILRiVMj6Av/K+jqjEh4fEScvsr9DmpI/JuB6IU2BuRUlJUS3o4+Qr7EUq7KTEvwEU7Md3yKjfbgCi2jmCLI6z/9aeOaetReL3sd8sUqYluCj5gu5nm6Hxi73df0LLSqNFW6B64cGZpGbxI3oJVhh6gfM13M/fYJs90HeQZhiMVDKPzXdN3RSM1RNiupjfDHA8xx5Y1avLdp21ZHwcObcMaorON3E7RI+428leRs9Um0NrHeRmnhUTfuTylRSEdl3dusICg+V2VLbyYAll4uPYXWJqb4LXAhVBl6/VsqbSILdSFq1Q181S05eFx8efz5F8uPhpi7VIyqTRtpG91oyVZqrGhepS3hJcxKJXi5BgNQFEXh7cJj3VgAZdDhW1u1ViydTvSlhuP578+UVi0oN8lbC4vX4jyYcPzVY92Y92ENF1Yb/MYTHbXoSxU7XmXFF4zSiuWNkyF63SMI50Xu67lHujH30RvtbfAL+BA9ssCj4AAgrq564kLt4vXwZocjEOfl428e58b81TBVUg3LpESIL/AFr3jF1TX1co2X3Ll5EyCcn+deP86N+auMYKghNVZpsrVB8gdrp1sZL9d4KQ54/lSQxQCiLH7/OIj5X+YX/WpDPaUc0QYGJKGevt12LFvVSW//QhQjN/75MaGa97kplxxqSF0+EBd4Xz+5OLz4OTdw7X6Pd2/2uNCN8ptHQMx/Cp5cmpKCsVtjHHtHEQX4WhZu6vWhsFdX+YueTN0oHD+C/5cLeJdPcr5IgB5WLCexy7D4ThD3bPWSmxf2bgz7DNIxgChybx9ecQqgjNSKJuEPWnAigG/keeHCsPcgPMXeDl/ld6JQfQT/F0EZyf1FcoffSHajL0UAdovOCVWIwshGyL3sCSJ144P5vwjKSFx2I1fdkjyxeAwIT3l+O4AkDMGNKt8PMcrzD+X/AihDYAGCzEhdEl58LwAz7KhnIduL3GBi6/ZkNC9Q4nj/6mEYl/J/OVqcMqS2kbxBg5s1qCrikOcHYQUFr/UueGS5Z4PQjeL1gyAWQRmxm2ANPU2EQPXYRxfmbUT1xI3DHbderZ1t05LDPUw45n7Az2xoHmasRi++xy7sqe4IIhLEYdi1idz2fs2KldUHEkcRlEHHiy28OJRcmLrGqcb17UkPF9SbnUEvamnEgWPqyDjoCY8gjsJUBp4C62oKIK6jmCrsC1JnbnjeOhhSjKLcO+DruuEMqBuF93P3YixIZUhXh0hHqQVTaGawb0auScSvyO3tmjX+chhx4XDfrVr8zV7wiSx/f++MI+cVW2zHeA5spedOYARGb2IccBTS3i5vu30amOC2wcTU6/zBUHhwxSlAZbzv2o6VUoTgwq9l34X8MCykorB9VrNvB1HbFoTqKHCjKL+7p+IUMZj6X97otNOLtS/JM4u2cRmyPYHQ51HtPNa27e27FrAjrar39jgLBby+b3U140UShClwITWHcS4kkGxkj2LMgatqld+lRYh7fXeoLuX/O0OyX/0ikyx0jEthnjVR7IPCOB+GroVQrdV1Ve3Py0HFuTNUCzjLSF4h8gspdWGklWLZWC0jdRT+gSjs7fOWDtox+Ei4cxxXwAA1/UqN0qJfSB31cni7LcsJjLK4W6vWYjMN3I/jUN2nzHFnqBbQ2iRfqQEtN+HCvs0P5/v8fgojIEKoyl+ExAGhemEinzn8EsW9m9oAFBGnyVRcfE3aGU3d5YDYdwFjMla54XlNN28HsZnGHkhH3dBHov+RMP9meUo65vhmotASqUioArKQJ8MLYe8mjVGUR3y96u7HQlXYviXMEaXjtF51oYDfwcSk4uJbDruwpu4KYZqlYhWce+5W60ATITnKXB+cGKWjOC0di2jBmVRcfC0QXWjuRc0LOPR8W2C5URjc2rpqRn0cBO+Bqzl1aF99P4rC15kTgAKkIvt2G1EAaW+Vd4UYGkhHwMjGKtQXXtPt21GoHSGkzyEdVXQR9D3y/NusklNAPY3P3q45AbvQGMoxPLib4XE+xmMVh2qtWnVvI/eCPD5zLd3QoOT4Z45ihuYoop5GM43Fd5wgDg2039/uxX0mc4Mz7Mc4bgzoBuoLQA8xysJoYuu6e3saZC53/E0KYxFT8HAMvojnfpeGCyV0csH0NEJvVK/VErEqiyPHBircjY2Ke31TdaphVEPJSZXVpQJehE6rzeIx/uUgbp8Tt/d5dyeOURR6l7zpnjO4RZyOIKLNy2gEgNO2rtfdnbDkJIeORegoutS/KHDcTvlMBOMAI78zjNVQMmkz+PM9IZaP8OEltDSIP4jrqnO3rmvhR6kup4ARcdjbcNye7Q5IIRXlgcO7FyIDZ3u/pkJQCmwd2sFiGPVjGPFEDn8k+jVZnn/DiI4CSDG46vYSstDcp5hwXLpnTOqJ8ulZTbV3E7G6TRTGZCRSkpHFwcSFknM2CEoOKzqKIEW/oF5zPb18GS//ul277MXdKMsjZKpuKHsDjKcTt2rZuFulUw2xb0KX497QkiMwo5xCfuvC20VAOHB1/iZW/ud3a2ad6WhwdakbKDZ7I4CEwRmmjjPKE/Dj6R0YCDq587CTi7qcQooN5oxrbpcfXfDRYAI3prrKM24k1cVFZeOA8aNAqKMa63580eHUa/R/F0vHArbewITra27s9rgB76Ko/AvDc968ZYkQOjSoLgY0aCyf9GuqHgEKRnS6rqq0kwvTsZDOBmjxTY8/52RhuF8zoygUub6LsBvZhmZv360bZlRA/cAE5+r4m+nfFYVR3dB1wxj50RuKjkIYA7w41AbQmUJongHz7e7R3gvQGM4goS8wY1ZtNGIx7u0CFxp2pDqE3oGJHL1Gs5umYyGMAdaDf/BjzY+cWrl2HtQNUbzg6/xOYjYFlHBWA907YjjTp47YKSPuAHjLqdZ2e5Qd3wHG3K8qxsx/UHGk86p7c8rJvtq/dVXjQmRDFRpTw6wTbR+vq6dj16rWoiEAfDIB0aHW6cxcxuKxKCeC0SMlbnDjqvxkQFwkCtBSm8ZAZOW+IPZ1swoEIzPUMaoa0JGHTR/+xDF1nT+nBx0y9/VScU4MMcjy6TmP+JtT8vjQlkKoglZKjDR6F+VyNTEG4HDy6ciNp2PfMnWETum3cWKBvzUzlmoyZFXd9TlOlLcnbr2WTEdMjzxCSSlCFH/sMAd3Cq5ZrfXDbyryt0nFnpQ0ZIj3tRC0YkYZJVo2X3XwGqpdDhmMWPFXYytxmDDrNeZEaxYgYj9CDiGekDZmPBOhcPwbYcSKSa1dxKkDK37m6Aa+bX6wzbZHhRmTazi+kGkR6eCLJWhnkn7E8Vw19VFPYP4itKZltS/Gcnue+WvFuVFgnwNXGeA4TB1+bppVpmUjz356W6uSzBOZv1iNHd2krTCEXDLV9vZrWs2frInc6Q20bDbTsvkCY2LXa2fbTJezve9WY0c3SSswUNlIJfM2tx6wgixDO1O1vRGLEXqhvmNGgikAPrh18dFNLxtjgQgTbsStnGbS5g16HuhT3FtITlZ14NkUcpmyCjXUUHXTGaVO68ifFgoxWRZ6B/D4NimOuGUzoWW7hedmMeKcxR2eEE/HXXyac5M6ySocYdKN+MTNRZQ6oGWDmKw5yVaOpB7b4fl0kpmORSPkhCRG3KwY9X5Aj32gEdzXsRhlfHLDHsz5oqPOtgXYigbIJUMVM98NCMMJOZ0Ap17war22nxwC9Po8AjhxdvQHcPDDkWeE9GOWPuq+tev2hEhAyLFLNwMjdHK1erk+iLsRqy0DKDP+rbPym8ATyQOPOrGpaMLJaaJ6xsnNOdbNzBQLlIgF9Th2RaXwNKSWTEcIQ82oBmc1ZPGtDrIj4Uf5dJ83J9vMbhU37Ds8vxPdpZodS2M8IKKJVA6iluoJCYV9fTrh+YtEC9g7PadLgTMTpL6lyupw10Z0suZP3zT2NAef8J/un3Pz7F8UuVl0IbE0dQC7l4MGlSReFfEJPpCF5PoY83+YOUvFKpkpTvxTJpAXQCSGmuK8qTYzdYYx9uFlPEgD6iDNm4gllFstG9Pa7Nl3oW8J7SuMbu1qbXKKuzSRaJCq4V48BONsuhBb4uGF3qgKomnfb94EkUgrVu4/LRcSY/2IBx1G3fUbG2jJBxOeyI67/Ti7LvQtifHALpN5qkjyEWQvcvE4eTrG2XYhtuS8bXhZJhiJagKMeO4xGUzPx1l3IbY0xhpuwv18hIYGj5Nv+1O4Y7bamamWnAIML0FMuTdkKgexCkKrbqrZ3FH0oz/YEhjBj8io8xOyhUH2cty6yo/S6fhEXEgshfFCw9zhiykZC4wqv5saQhX91I+zNEa3HC5+YW1f4/cSTnwKZYaxjHxEqNYnbsTafpBg/9lnirSl/Lhra7X9oX9MLiSD9Mm5kFgSI8gOVN1OiEPfnlKZYSwpO0a24Sbjk1jRD/r/sGQrt8O7wzQXPs0YpZZocwaj9GHFUywzcWP7l6zTmKftQmz3aN8nW2bidhfGpx6j1KZjfPoxSm0Kxk8iRqllMeGnEqPU0qKp6Cf6/S1BFp9OEsZM/tQBclGsfmo5GDdBBvtUHfhsz/Zsz/Zsz/Zsj7L/A3R2WC4L6Q+WAAAAAElFTkSuQmCC',
                  dificuldade: 3,
                ),
                Task(
                  nome: 'Aprendendo Andar de Skate',
                  foto:
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSo3E3jngVfrItC7kxjdaL0Nw32EH7gYmGuoA&usqp=CAU',
                  dificuldade: 2,
                ),
              ],
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
              opacidade = !opacidade;
            });
          },
          child: Icon(Icons.incomplete_circle_sharp),
          backgroundColor: Colors.blueAccent,
        ),
      ),
    );
  }
}

class Task extends StatefulWidget {
  const Task(
      {super.key,
      required this.nome,
      required this.foto,
      required this.dificuldade});

  final String nome;
  final String foto;
  final int dificuldade;

  @override
  State<Task> createState() => _TaskState();
}

class _TaskState extends State<Task> {
  int nivel = 0;

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(8.0),
        child: Align(
          alignment: AlignmentDirectional.topCenter,
          child: Stack(
            children: [
              Container(
                decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(4.0)),
                width: 500,
                height: 140,
                child: Align(
                    alignment: Alignment.bottomRight,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                                width: 200,
                                child: LinearProgressIndicator(
                                  color: Colors.white,
                                  value: (widget.dificuldade > 0)
                                      ? (nivel / widget.dificuldade) / 10
                                      : 1,
                                )),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              'Nivel $nivel',
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ],
                      ),
                    )),
              ),
              Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(4.0)),
                width: 500,
                height: 100,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      color: Colors.grey,
                      width: 120,
                      height: 100,
                      child: Image.network(
                        widget.foto,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: 200,
                          child: Text(
                            widget.nome,
                            style: TextStyle(fontSize: 24),
                          ),
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.star,
                              size: 20,
                              color: (widget.dificuldade >= 1)
                                  ? Colors.blue
                                  : Colors.blue[100],
                            ),
                            Icon(
                              Icons.star,
                              size: 20,
                              color: (widget.dificuldade >= 2)
                                  ? Colors.blue
                                  : Colors.blue[100],
                            ),
                            Icon(
                              Icons.star,
                              size: 20,
                              color: (widget.dificuldade >= 3)
                                  ? Colors.blue
                                  : Colors.blue[100],
                            ),
                            Icon(
                              Icons.star,
                              size: 20,
                              color: (widget.dificuldade >= 4)
                                  ? Colors.blue
                                  : Colors.blue[100],
                            ),
                            Icon(
                              Icons.star,
                              size: 20,
                              color: (widget.dificuldade >= 5)
                                  ? Colors.blue
                                  : Colors.blue[100],
                            ),
                          ],
                        )
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: FloatingActionButton(
                        backgroundColor: Colors.blue,
                        onPressed: () {
                          setState(() {
                            nivel++;
                          });
                        },
                        child: Icon(Icons.arrow_drop_up),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
