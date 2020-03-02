Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 06887175278
	for <lists+linux-riscv@lfdr.de>; Mon,  2 Mar 2020 05:11:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Transfer-Encoding:Content-Type:References:Message-ID:Date:Subject:To:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:List-Owner;
	 bh=wbRYaKPLpG2hqjX0FPqOsDCSJXe/CirsWTJYNT8KA9g=; b=LIAK3QFd3s7ICsCsykCA5/5v5
	hTpbxIwAhUcC8kEx7+oreLjmfknKTx+jR8BEYuBueNzqg4+7XCZQwEzPHN4GjvFTsBERHxGo3IJem
	HzDIM1cnWgqk8bzv2x+ZQtsO7ic0zge6QT11PBzYfPUyORV1pK1s2B2GK1yr0hP0oY+c7EMaB5MSu
	5VVi+6ombls+5OtJVeWGL/58tKKHTD6jXsmJT+3KZV3/1gWw2SaLnSe11FEi5NiqrQfammhFTjVEh
	HQg2Kp+6lWbZH+eVZ4GbCbj1lYZXLAArsJevbgycnv4JgcMzjX1+v0iYn/uB+FjgdfTKVU6FHwFM1
	tWZ1VyXIw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j8cQl-0000Z8-NJ; Mon, 02 Mar 2020 04:11:47 +0000
Received: from esa4.hgst.iphmx.com ([216.71.154.42])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j8cQi-0000Yc-6Y
 for linux-riscv@lists.infradead.org; Mon, 02 Mar 2020 04:11:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1583122303; x=1614658303;
 h=from:to:cc:subject:date:message-id:references:
 content-transfer-encoding:mime-version;
 bh=aqMv4F3COHjWUeoPZ24xuIFmAa4yIJvtUsVD5MVrAXI=;
 b=bvvDrf89tyb5BZ3/c0yzlF/nAWU5oxZTzvOQojVG1YF34jSTLh6hicEN
 rMbxvNECWZHc/bsw3PDUlj0/QBMck8pNUkbAGW9RBmsSXKW+aPv2azmOF
 cRGEbz/fGnWqszDXnrpGVvYPjEokB/u50jriCFq3UF8ET/E4dOCnD2POW
 nDwk1uJMhK/MAkuMlz7Hwuts55FTJ6ABzo070tdF4E5LVMvfadz90pXSq
 d+lxWrGxSA91pOQRNeS17C/fEI1Sj6Hb/evSS0tVCKp+hf9vo1ao6SCpC
 EcCZuLTMzxM0eKK+SQ8z01FlrMiONehV/z3EixLSUudJcfISB1hEcGoQ4 A==;
IronPort-SDR: b7+tpmSIupNXOyvOUoPZle2JufZMgsAOAKA3BFZNeExqjTsIYlkOajoNkkjRjXaXpk4+7jB4Xr
 TQTl8h/BpIlI7hSP2/iRnVTRMMQvr7Inw9Y87FOVXxs7acezLRQjrLse452KxaCcA/HKK2Nm5Z
 l6riXt+J2d4+BIr3ex9CoA9TQwRqvKUpoJ+SdA54Mc215HqFVqdLb1YPpk50Ga845Gm8WrIZIl
 mZKOna9n09d0AGSZm4RZNAd7OToJ9dgYlO1pjc0KEDARUiMjRwzxxx7LURR7q+yo89yMSpwPlf
 br4=
X-IronPort-AV: E=Sophos;i="5.70,506,1574092800"; d="scan'208";a="131118736"
Received: from mail-dm6nam12lp2174.outbound.protection.outlook.com (HELO
 NAM12-DM6-obe.outbound.protection.outlook.com) ([104.47.59.174])
 by ob1.hgst.iphmx.com with ESMTP; 02 Mar 2020 12:11:40 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=KJL5ADX7JV20kaqj09Fx1e9yB9r8HpLvm3BUAmlx4tCadt8NnISMyATwX0Pe6TqbdStEDxZnAQ6iEl0GeGGmQsNGSwXjfPgEU8f92fRB/NAPYR3jFH55R9LhDvt+LUQ8/1o6UTN5WZGxlzQByf26sMzuNRMvoXfJ47L8nhV/0i17SPMZr0+IoVyfRhK5Jyai7lelGI47dEb2ohqDnMnzGqfknwiToqZ/1bFj8SzNiKBS0D5s2gwPil13yzlvGRGsdspdnV3RuUa/7ca8gTohu1di8wu+2t/uiRffDw58W3UDvl09dIZK2D6n+3w+T4zSee9wPWApoiZXF2mv5PFH7A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=wbRYaKPLpG2hqjX0FPqOsDCSJXe/CirsWTJYNT8KA9g=;
 b=GJ8n4BRb5uKeXJDPa11uZz8yGZMAGcsT4PERqk+IErvN58AxYcHeYsZQqo/V7j8UVAHtfOjS8oD2VtBOc7k3dHnaxQd9Djj+rj87uSiEgtP2KAYWLxzyiuUQ/LWlA2vPebJBcAqm07F4HQPAIQcL64JfLpLGQiynWDvLN0wLqParQQqxhGLGA9cIn+WcPreB4rbmH81g7tvnz2oIbB89qgSY1nKZmypy5PQYym6nWjUFyfk9KKH7drQ4WcobVmBi0Rl3UaEuw3x+dVEaRE6St5fykt+HDdiDnvy9mH9w8InbXW8mdXOBFy8mFpOAQ51Y5K9x/GdbuoXJG0j8nnrUig==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wdc.com; dmarc=pass action=none header.from=wdc.com; dkim=pass
 header.d=wdc.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=wbRYaKPLpG2hqjX0FPqOsDCSJXe/CirsWTJYNT8KA9g=;
 b=VB5AZCLQEIanjbViVtjgbA184+0rB0p/Ygn22Gv4qll9Cuoa72BTWL4JhGXN0qZvG+RPQlqsTe39BQ8srkyTrdBGyktfGfVhzLYl7hYRjoqmRzpZb1jyI5I5Wl/q44+MwXKcMm3667H7iCSIleqQ2LajMfpiBsAk/GBiaPbh4wQ=
Received: from BYAPR04MB5816.namprd04.prod.outlook.com (2603:10b6:a03:10e::16)
 by BYAPR04MB4645.namprd04.prod.outlook.com (2603:10b6:a03:5a::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2772.18; Mon, 2 Mar
 2020 04:11:39 +0000
Received: from BYAPR04MB5816.namprd04.prod.outlook.com
 ([fe80::6daf:1b7c:1a61:8cb2]) by BYAPR04MB5816.namprd04.prod.outlook.com
 ([fe80::6daf:1b7c:1a61:8cb2%6]) with mapi id 15.20.2772.019; Mon, 2 Mar 2020
 04:11:39 +0000
From: Damien Le Moal <Damien.LeMoal@wdc.com>
To: Sean Anderson <seanga2@gmail.com>, "linux-riscv@lists.infradead.org"
 <linux-riscv@lists.infradead.org>, Palmer Dabbelt <palmer@dabbelt.com>
Subject: Re: [PATCH 00/10] Kendryte k210 SoC boards support
Thread-Topic: [PATCH 00/10] Kendryte k210 SoC boards support
Thread-Index: AQHV7nY646/VURUiUEOLVfw+FTteGg==
Date: Mon, 2 Mar 2020 04:11:38 +0000
Message-ID: <BYAPR04MB5816207C9B451E1C663B1986E7E70@BYAPR04MB5816.namprd04.prod.outlook.com>
References: <20200212103432.660256-1-damien.lemoal@wdc.com>
 <5be71201-962c-5db6-c330-f30a770c4034@gmail.com>
 <BYAPR04MB581679CF61DF51E1588D7960E7E70@BYAPR04MB5816.namprd04.prod.outlook.com>
 <789d9de4-8b76-19ff-15bc-eaef6d274173@gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Damien.LeMoal@wdc.com; 
x-originating-ip: [129.253.182.57]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 294a9fb8-0330-4975-de71-08d7be5fce7f
x-ms-traffictypediagnostic: BYAPR04MB4645:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <BYAPR04MB46458327AC72FE8DB5A30253E7E70@BYAPR04MB4645.namprd04.prod.outlook.com>
wdcipoutbound: EOP-TRUE
x-ms-oob-tlc-oobclassifiers: OLM:4502;
x-forefront-prvs: 033054F29A
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(366004)(396003)(346002)(39860400002)(376002)(136003)(189003)(199004)(66946007)(76116006)(5660300002)(33656002)(8936002)(2906002)(53546011)(6506007)(7696005)(81156014)(81166006)(8676002)(71200400001)(66476007)(64756008)(66446008)(66556008)(186003)(316002)(110136005)(54906003)(4326008)(26005)(478600001)(55016002)(9686003)(52536014)(86362001);
 DIR:OUT; SFP:1102; SCL:1; SRVR:BYAPR04MB4645;
 H:BYAPR04MB5816.namprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Bi3+BW93as9jCmD1rma+9rxMZTC5dbSnVtpchX2u1WAJ6Y1kygkxuAUAC8jbRZZXhBaeoB1D9ZZubHb8QKoWWZFWwiTLiafiRppAtwn9TWF6pXHtTjY8i4eDvVBitRz2dZpYUskshpn/mBthj+WzHKaCF06bxFaZkOmkD+6WH7hOnmRx9L9DiPMmr3s3kb7cySx5kJ7+cFgFb3jJcOyQ71fhMhXYIMDcnfI//hhYezrFPVmFsfiC258su7eiWIanIx1vgDUJ2AwCl/bFAQKgzy0/xesnxxc/JdvO2EeDmP5jQ2OwwiMCj+8ZD8alhwF8ZD6lRD8QCWrYvoqUclX8vXotpUEv/c/cDYrtWkrWt/dUZvAs1IevMb1P0k58AUF2udZAXKhOqj4tT+0HGdkbNOdeAT6LD5XnWVLERFZJJUl5jpTJF9nzqOvqCkUWXcbX
x-ms-exchange-antispam-messagedata: VvxECJcZKKFQY5d8c8MeNR+teUKgVo4ysIl5dEfjPurGcCcPivSRe4vnUXAqIfG95ilOO0QDZLbaIuCqn2HJakH2/iHPyceM8b/P3RI5UuYm/maaXWzW6gQyjhycFu35Q9wEihxMCACIoMWHPcvxAw==
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 294a9fb8-0330-4975-de71-08d7be5fce7f
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Mar 2020 04:11:39.0072 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: a5ngWEsaoYbP0JkIUM+bJLFrF05/03BeyO2WrpuYLY6MWNRAx5l81dIn6cNZV5xEuAdim+UhSljPwhOn3XZSDQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR04MB4645
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200301_201144_379108_777D020F 
X-CRM114-Status: GOOD (  13.91  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.154.42 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
X-BeenThere: linux-riscv@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <linux-riscv.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-riscv>,
 <mailto:linux-riscv-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-riscv/>
List-Post: <mailto:linux-riscv@lists.infradead.org>
List-Help: <mailto:linux-riscv-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-riscv>,
 <mailto:linux-riscv-request@lists.infradead.org?subject=subscribe>
Cc: Anup Patel <Anup.Patel@wdc.com>, Paul Walmsley <paul.walmsley@sifive.com>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On 2020/03/02 12:53, Sean Anderson wrote:=0A=
> On 3/1/20 10:01 PM, Damien Le Moal wrote:=0A=
>> On 2020/02/29 5:32, Sean Anderson wrote:=0A=
>>> Hi,=0A=
>>>=0A=
>>> When booting from U-Boot I get an OOM. Perhaps this is related to the=
=0A=
>>> second cpu not coming up?=0A=
>>=0A=
>> Unlikely. It looks like your user space needs 2MB per shell (order 9=0A=
>> allocation). Since you have only 5.5MB free, that may explain the alloca=
tion=0A=
>> failure (if init is forking another shell especially).=0A=
> =0A=
> This should be before init comes up; when comparing this to your syslog=
=0A=
> output there are several more messages before init gets started.=0A=
=0A=
Ah, yes. Your log shows:=0A=
[    1.899086] Mem-Info:=0A=
[    1.901072] active_anon:0 inactive_anon:0 isolated_anon:0=0A=
[    1.901072]  active_file:0 inactive_file:0 isolated_file:0=0A=
[    1.901072]  unevictable:705 dirty:0 writeback:0 unstable:0=0A=
[    1.901072]  slab_reclaimable:0 slab_unreclaimable:215=0A=
[    1.901072]  mapped:0 shmem:0 pagetables:0 bounce:0=0A=
[    1.901072]  free:417 free_pcp:0 free_cma:0=0A=
=0A=
so only 417 free pages, but awapper is asking for 512 pages allocation... W=
eird.=0A=
Did you use the k210 default config ? Something using too much memory for t=
he=0A=
board has been added to the config I think.=0A=
=0A=
>> For the second core not coming up, an IPI needs to be sent to the non-bo=
ot core=0A=
>> to wake it up. A Kendryte thing. U-boot should probably do it before jum=
ping to=0A=
>> the kernel. I thought I had that in the kernel though. Will check again.=
=0A=
> =0A=
> I think it's a RISC-V thing. I should have U-Boot set up to start linux=
=0A=
> on both cores, but something may be misconfigured on that end.=0A=
=0A=
May be. I would need to check the specs again :)=0A=
I think that normally, the rom boot stage is normally bringing up all cores=
 ?=0A=
And the kendryte one does not ? Hence the need to explicitly do it for dire=
ct=0A=
boot (in the kernel) or in u-boot ?=0A=
=0A=
> =0A=
> --Sean=0A=
> =0A=
=0A=
=0A=
-- =0A=
Damien Le Moal=0A=
Western Digital Research=0A=

