Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DCD4412A5E4
	for <lists+linux-riscv@lfdr.de>; Wed, 25 Dec 2019 05:44:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Transfer-Encoding:Content-Type:References:Message-ID:Date:Subject:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:List-Owner;
	 bh=NZFBTsSifdkm8sIgnDz+bVPq3lJ6nO7AnGaS/1jwZG0=; b=EGd4Ewpp4Xbh33UeQaev/mHRh
	p4La0VRLGn7dWQmK5HmIYDUqMx/rjOHsC9sMaA2c9jPaHO8K+BLf/q3CKO5BoTNbi5RqbiOH9Los5
	RvRc9hpebUa7x4cZJM3EpQ7fek5sQ16o4GGR5tovNPMlqbSBqH8YFAjVOE8Gm4npb0xAU2I9OItMq
	Vx25dUNxaVa1mJTpLSqXWFLyKfYxYZaepkI9EAH3r2Feeunr6yvC4Yrb0uC+0iPMcdffqwkCRzVb5
	rsIxXhQnt/7iDd0pip/1xJQ+7rtbKfCtziU3+Notw4jZ2MwYv5SpVkiMmNXNc7QRfOaLzmA8TtqYo
	34WLq4V4A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ijyXS-0000OQ-Cn; Wed, 25 Dec 2019 04:44:50 +0000
Received: from esa4.hgst.iphmx.com ([216.71.154.42])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ijyXO-0000Ns-5q
 for linux-riscv@lists.infradead.org; Wed, 25 Dec 2019 04:44:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1577249085; x=1608785085;
 h=from:to:subject:date:message-id:references:
 content-transfer-encoding:mime-version;
 bh=NZFBTsSifdkm8sIgnDz+bVPq3lJ6nO7AnGaS/1jwZG0=;
 b=m5HJnl17Vem0QkF5LYv9ZjS2DggQ3a3WWCYrFx/r+eNgEqZbVMccilFq
 oHgXXjFTGJ5134z/4xkOUBou6Uz7wjFB0obbUstXvJH6JWpeDAFLX9XkC
 TIkQtwCtiBqA5iDII2W0LM5CFahcEwfaAeZCn8InkNVxMVd577pWjQC1Y
 HoQaSU9afQ3GtqVeh3YkF7s/xtHrVTfyF/mPE4/kpSH8Fa7Q7L20Y21Gi
 uDz6bIh6Q1hR+raTew21wfACcwJo6vGnb6XOjOu1RzAnlsKUQC5KOuyBu
 Bcp+FVaYyMSuJTFyRlTFTQRHYX6bWXW6yuawaP3xd39ESXiM7dnaxfNzQ Q==;
IronPort-SDR: V9TP/LKJRB7hz+Fj+sI3oydPW/VtFSCMn8tknCiyDA1KAsIAcYfdXFxE2HeiDvjx+iem/1Yc+q
 ufcdfHeoOC4AaPhanvFgtC9FiFFfNERBGvkcgz8dDke+zEW3tLqSx4LImV4DjkefpwE2ivyet9
 qUoLfdL2H7eLztYWEKRWp4xBld1/HbO3lNfEoDJn1XPqOW33jLvj0oG8C+BHJT/yivJoxSaEpB
 yhQQgKU1uZd1K4BnqoOMgJevuOG8qPPurDivCN8cjOcER5yE7E9WlMTTphlIoNYMtOCl8C5Sxz
 7co=
X-IronPort-AV: E=Sophos;i="5.69,353,1571673600"; d="scan'208";a="126097605"
Received: from mail-bn7nam10lp2100.outbound.protection.outlook.com (HELO
 NAM10-BN7-obe.outbound.protection.outlook.com) ([104.47.70.100])
 by ob1.hgst.iphmx.com with ESMTP; 25 Dec 2019 12:44:40 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=fk2RrK+2dX+DoXXOVPuHTDsA+K7fIlWFRNDECRMvAYVWD3zZacZ/FkbVsVYJk+rf19SCMNoNZem1H54fWVTI8exrrmuKi79QQRt6IxlIZgrxewYCb051DwgLsDReZ/oQAblZpfmBWPN4fwNlLv0ZHHq7dvm9jthrZv+Rn+//Ng1CTaYvnepBnwPQngevPIPGWICKGbPxJpzzOHT6vgt9RcD7ilylkj83Yxki5gtyhEPWQ+3vOGqLcml5zEPAy14aoSZrnHrJQOCoz1HXSFEB9MayqG2wxI7DR5t+qH8cJEhfb6ZT/S2JavN9g0yVIWZGpUJSHIFBAkeIxaxKXZGubw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=NZFBTsSifdkm8sIgnDz+bVPq3lJ6nO7AnGaS/1jwZG0=;
 b=MC6CL+6r1lnjav+M3u9FGjrRLUwIdXwR+UW7QCoyDcuky3y79zeAjPwwA87cyERpab0jufIqLGUlcOycqnIIh3Dp0619980yLkvNHi1K42+MAJe1mmHhxKN0IeX9QX3O/Ls4Vw2LUpGzz70KikyKsbTbhTaulmTcg0kqpSGrT+LEjNvYJCxQUn8TcNt/KGNTRNhFDcx+BJBw5QPsvOi9W5ti1GRZfWa3hyoqUqqr56slp8lmT0Z7Rr9e5dt+FnXrcFSV7zXtHEaotZ+XVGBO1Cbce+mGDIluzFu/tOIbf98sMwI6Cgk2R6CpiwqXy5A8JG3txIyAsUqFLOwPw8c7eA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wdc.com; dmarc=pass action=none header.from=wdc.com; dkim=pass
 header.d=wdc.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=NZFBTsSifdkm8sIgnDz+bVPq3lJ6nO7AnGaS/1jwZG0=;
 b=XVz5t+CBojKD1NBwL3FTRO6mnb/aIph0CctWN4k2Q7lLntg+GmafCxBM833FyN5eW8DlZk1xuQK24bJIcOaiFKuVbfO7pYavERgj3WurvgSr3AuniZqo6RmqLRJxWj5Fq2noe7MO9cRSG5FOoRxhU7iXzBAHSri6Lp7uCnM0m/I=
Received: from BYAPR04MB5816.namprd04.prod.outlook.com (20.179.59.16) by
 BYAPR04MB5509.namprd04.prod.outlook.com (20.178.232.140) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2581.11; Wed, 25 Dec 2019 04:44:39 +0000
Received: from BYAPR04MB5816.namprd04.prod.outlook.com
 ([fe80::cd8e:d1de:e661:a61]) by BYAPR04MB5816.namprd04.prod.outlook.com
 ([fe80::cd8e:d1de:e661:a61%5]) with mapi id 15.20.2581.007; Wed, 25 Dec 2019
 04:44:38 +0000
From: Damien Le Moal <Damien.LeMoal@wdc.com>
To: Drew Fustini <drew@beagleboard.org>, "linux-riscv@lists.infradead.org"
 <linux-riscv@lists.infradead.org>
Subject: Re: Current options for Linux on RISC-V?
Thread-Topic: Current options for Linux on RISC-V?
Thread-Index: AQHVul4CQWcJDGTiEUq0AnCztRKtQQ==
Date: Wed, 25 Dec 2019 04:44:38 +0000
Message-ID: <BYAPR04MB5816D2323D68B6BA4B02B9EFE7280@BYAPR04MB5816.namprd04.prod.outlook.com>
References: <CAPgEAj6edQiTtXkau+E5hSb=RcQ7vjv=kTN0yAmgbOYXEx0+Dw@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Damien.LeMoal@wdc.com; 
x-originating-ip: [199.255.47.7]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: a74a505d-d631-434c-3b15-08d788f52676
x-ms-traffictypediagnostic: BYAPR04MB5509:
x-microsoft-antispam-prvs: <BYAPR04MB5509C0AF1B1D1D572B49B590E7280@BYAPR04MB5509.namprd04.prod.outlook.com>
wdcipoutbound: EOP-TRUE
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-forefront-prvs: 02622CEF0A
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(346002)(136003)(39860400002)(376002)(366004)(396003)(199004)(189003)(8676002)(478600001)(33656002)(9686003)(55016002)(86362001)(186003)(966005)(71200400001)(76116006)(81166006)(66446008)(81156014)(91956017)(8936002)(64756008)(66556008)(66946007)(66476007)(26005)(53546011)(2906002)(316002)(6506007)(52536014)(7696005)(110136005)(5660300002);
 DIR:OUT; SFP:1102; SCL:1; SRVR:BYAPR04MB5509;
 H:BYAPR04MB5816.namprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: VgxpGVoIDY+65CeN0r9ExlJ7gAs4shkpu8urhh5bIivx6hJPal7ST5hcWTbN7l5Q5Vf0/g8woBmXTKDrtePhm/Xz9SC2/fhGdtUGbyVql7ivBTGFC7trP41FVJ7NncmAnYNKpDycIgBy/tKOlfBVxEcKGZRNBNLT/QV7qF8FFOXix4vKEYNyyhMyp8uUy3Csbf+MQM8MJ+tVKErWbe2SsuRUrS/ClWaqv+eteYODlZnPdzXjs8oWQxXWMgh2FB9RFZn2EBc+6KDb5qvpTlRjAQQ+lffJQNdPId/0EK+7BIJ4ZeQx2YU0XuEU0xTT5cFQ0k6F2ij+QQW5rOKRg8xV88e/cxllu8vF3U9h7gEiM8X4FCYCaQDR58BDi4xqMjus7fcXZ3+xAZmOvqCdLNxLeHEJuqjGw/ZHr9HAKn39GLqTRsu7ClHJSsbH17exTgoeQRep9aAD07ZlQGBAX7KhXJ7l4Ff8Mhjx4Gd72/FH9Kk=
x-ms-exchange-transport-forked: True
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a74a505d-d631-434c-3b15-08d788f52676
X-MS-Exchange-CrossTenant-originalarrivaltime: 25 Dec 2019 04:44:38.8083 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: YgwHSV8G1Y3nQptaxPkJGe4jdRK+/9r6llPmXQJdmk/Z/wBPUJQA7INvQEVzVsW1FX3nY5FqpNtRvO1YitAi9A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR04MB5509
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191224_204446_334395_E9E675E1 
X-CRM114-Status: GOOD (  11.05  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.154.42 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On 2019/12/24 22:28, Drew Fustini wrote:=0A=
> Hello, I'm giving a talk about Linux, Open Source Hardware and RISC-V=0A=
> this Sunday at the Chaos Communication Congress (36c3) in Germany [1].=0A=
> =0A=
> I want to make sure I am up-to-date about the current ways that people=0A=
> could run Linux on RISC-V:=0A=
> =0A=
> - QEMU on x86 (Fedora / Debian)=0A=
> - SiFive Freedom Unleashed board (unfortunately expensive)=0A=
> - Kendryte K210 (NOMMU, limited SRAM, I am not sure how to reproduce=0A=
> the LPC demo) [2]=0A=
=0A=
The K210 specific code is still missing upstream. I have not yet posted=0A=
anything, lack of time being the prime reason. We still need a proper=0A=
device tree, a defconfig and additional code for enabling the last 2MB=0A=
of SRAM which are not automatically enabled by the HW on power up.=0A=
=0A=
Flatbin format for userland would work, but proper FDPIC support would=0A=
be nicer. gcc and uclibc will need work for that to happen. We are=0A=
currently looking at that.=0A=
=0A=
=0A=
> - RISC-V soft core on Xilinix or Altera FPGA with proprietary toolchain=
=0A=
> - LiteX-On-Linux with VexRIscV on Lattice ECP5 FPGA with and open=0A=
> source tools (trellis, yosys, nextpnr)=0A=
> - Microchip/MicroSemi PolarFire SoC (stil coming soon?)=0A=
> - Future: OpenHW Group and NXP making RISC-V iMX-style SoC?=0A=
> =0A=
> Any other options that I missed?=0A=
> =0A=
> Thank you,=0A=
> Drew=0A=
> =0A=
> [1] https://fahrplan.events.ccc.de/congress/2019/Fahrplan/events/10549.ht=
ml=0A=
> [2] https://youtu.be/ycG592N9EMA?t=3D10394=0A=
> =0A=
> =0A=
=0A=
=0A=
-- =0A=
Damien Le Moal=0A=
Western Digital Research=0A=

