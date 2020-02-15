Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 138D415FC4A
	for <lists+linux-riscv@lfdr.de>; Sat, 15 Feb 2020 03:02:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Transfer-Encoding:Content-Type:References:Message-ID:Date:Subject:To:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:List-Owner;
	 bh=kXH5EybS0BlLBapnO+/f1AUdLLv57TN4VVNLEeE0UvE=; b=PLDSRdUFRgcOKe3R89d6T3Qg+
	s6hShK4g9HIz+MbtylfNOBUAcX3r8PX25xPkhkPY+N5qfFoEQ1mTVPyF/txdAzNQ4F+UfaRtRGQjM
	w869IaIHXMfJtWKttwrSxP4nXXP4AX8/IjqrRZbO5RYW0SQzKxl+w6zqmtYDv6g/KHYjG9nWECWcQ
	HtIjH4RA3/3z5Zyb/Kql6uk82DTEcnQ3QROQw9dTpkbaQ9ZkZDKzz0Zsv81ENdWIsWB3Yd2LYntAH
	oW7gYJ1GJpy4ZIdokOx+ybaPLBvhDSENSBcNAv/KMuyUkJMMPCFV+eJLwQV9HHXsTnCzGjgp5R0Dc
	GVRJJFqog==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j2mn0-0007zs-Qe; Sat, 15 Feb 2020 02:02:38 +0000
Received: from esa6.hgst.iphmx.com ([216.71.154.45])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2mmx-0007zR-1A
 for linux-riscv@lists.infradead.org; Sat, 15 Feb 2020 02:02:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1581732155; x=1613268155;
 h=from:to:cc:subject:date:message-id:references:
 content-transfer-encoding:mime-version;
 bh=/WvhvUhL/1KR/CB1xPV10Oh5Xz9nn1zMdJHu0Ytsk5U=;
 b=Cp26XkfctHsn9zHLPzbCN+x6mZJJuCPuyXLACpnCdW8SkTbjIom1CLV6
 aN/qKO5mjnwJgLdCGBVkDyQcMXKT56irNWwrFFrl3x+JwcQWupbDYhj9t
 oUkxn/7RZGVr4/SiE3zVxtFwkjjbQDBMzqpl/OJ7NWJA+OH5sg6RSpkZj
 B4ri90kr0Kr0IeTAGNCrxuSa4NfoUX5Ecr2RIyPRcN4F0CZLXPnVPf40V
 hP6fUC3oJyETNGrCV3XV9VB007X4fcsLk3GV2Qx70MHdY8Iw9/8KJJiCT
 3FLkSLJTEB7fDAga3DmntWtbk9iR8n5QLF8dVYVKcuBXJ5Hul4xczo+vP Q==;
IronPort-SDR: UouJUc5HiK/9HV8fYBGN2ynSvYLfCUsUzw2Z5CYC2DWPm6f+To041DNJpx12h1QsbYA0ij9S41
 cTH2Em0asDsO6i/iVK6je5PwZLMzh1L4lEbX8jVOF32rtzLYxX3HjNXlIFFsV80rGdaGLWxzmR
 7YtJLMVdmS4KcNRcTScJq52DAwTqtM10ReOMioR+Uz8GtonP9WokYR/vJdAK1REOQm1PZ3d0iD
 9Xg7qXA8u5DzUEZKKh+2cZbaZtc+SS7bSC8X9MrNHbeO3N1br/WFCn7UJ2+unr4pBoMGZomVL6
 ns4=
X-IronPort-AV: E=Sophos;i="5.70,442,1574092800"; d="scan'208";a="131348349"
Received: from mail-bl2nam02lp2057.outbound.protection.outlook.com (HELO
 NAM02-BL2-obe.outbound.protection.outlook.com) ([104.47.38.57])
 by ob1.hgst.iphmx.com with ESMTP; 15 Feb 2020 10:02:30 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=L8dk8g0UkZ5TZ+AqShjHsGMrTKg6DaoiTiyxHRiUexo7gmacIg8x7NXyKLEpO557T0YGDYUBvcfWPlc3AdlY0FG9hfD8O+iuJDY7ulWqLcCGJDRNjOudIaN5vQHBMsZI3sFR8Chw6RNyWzae0k7ucafX4rc2fpEHIdTx9F9d968Tt2fHFebd10mJZN9ZP/RRyb4ryJk8hyLaRK44oJMX+P1fgq24QH6/6HRSv+7DE2AudM6xidMRIT0SUPpTlIAPmhzT2RGsO9ZRuBy27Y3uR6obVPR8KJ+51q3+vLa+/WJvtzVfb+aQxYy5sH5aAue4DUfqVHzXlRnCO+Qo4+q9Rw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=kXH5EybS0BlLBapnO+/f1AUdLLv57TN4VVNLEeE0UvE=;
 b=Mkg33CtqkHXL8ndO4fnVWg9YR9jrCXOq7RVRpnLhz9/FWhuCWlJ6fmLm8dP2c2GkDUnT8PgtIUrork1L/CuX+kiv8i2JRJ9kFo62fWLJ7L0Nc80db4sYuQjwTgSfbauUACrBqh5HVquZIhur+zmTQwWgsAxHMsL1F0NrScx6GWoIMqUh8hTP9etYvLPtx5ulvy9QNyQAmhwO4zcw7OD/WWtWITsG8q9H3r9VIbylXI9/qHdTC9KESYOoj3s4JbSUtadVpz7mULaBsriaBHWWNVxjvgLKldLi2miwDVF7LinOnP0WicDtWlJnQic32IvpFON7InsmMDZVvfxwrwcZAQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wdc.com; dmarc=pass action=none header.from=wdc.com; dkim=pass
 header.d=wdc.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=kXH5EybS0BlLBapnO+/f1AUdLLv57TN4VVNLEeE0UvE=;
 b=aBjayO39R5wS16DV/DyBQVybRSjupxU54WDLhsY6zVDgrfo2dm6nunRyXBNJlc9O3LJUb+k+jrUDcBCCXWiNrbeKN4MTs+9nG1xUg288R2gk7SadyA2Bphkh0oc7R/C54GLz6YmVJbUYG/iwPE4hzTnC5ddY/Ng/ENSotG9kanQ=
Received: from BYAPR04MB5816.namprd04.prod.outlook.com (20.179.59.16) by
 BYAPR04MB6087.namprd04.prod.outlook.com (20.178.233.160) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2707.29; Sat, 15 Feb 2020 02:02:27 +0000
Received: from BYAPR04MB5816.namprd04.prod.outlook.com
 ([fe80::cd8e:d1de:e661:a61]) by BYAPR04MB5816.namprd04.prod.outlook.com
 ([fe80::cd8e:d1de:e661:a61%5]) with mapi id 15.20.2707.031; Sat, 15 Feb 2020
 02:02:27 +0000
From: Damien Le Moal <Damien.LeMoal@wdc.com>
To: Carlos Eduardo de Paula <me@carlosedp.com>
Subject: Re: [PATCH 00/10] Kendryte k210 SoC boards support
Thread-Topic: [PATCH 00/10] Kendryte k210 SoC boards support
Thread-Index: AQHV40hM46/VURUiUEOLVfw+FTteGg==
Date: Sat, 15 Feb 2020 02:02:27 +0000
Message-ID: <BYAPR04MB5816C1EADCEF92F1F1DE60E0E7140@BYAPR04MB5816.namprd04.prod.outlook.com>
References: <20200212103432.660256-1-damien.lemoal@wdc.com>
 <CADnnUqcFbmspQ0fcggoyPTE4mckoGahHmaNdcJeC7GJD7C16uA@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Damien.LeMoal@wdc.com; 
x-originating-ip: [129.253.182.57]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 755b5ffb-e2e6-4ef0-3f0e-08d7b1bb1bae
x-ms-traffictypediagnostic: BYAPR04MB6087:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <BYAPR04MB6087BB43EF99E69D0D9E8564E7140@BYAPR04MB6087.namprd04.prod.outlook.com>
wdcipoutbound: EOP-TRUE
x-ms-oob-tlc-oobclassifiers: OLM:7219;
x-forefront-prvs: 03142412E2
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(396003)(346002)(376002)(136003)(366004)(39860400002)(199004)(189003)(5660300002)(52536014)(2906002)(86362001)(4326008)(54906003)(7696005)(55016002)(9686003)(316002)(26005)(76116006)(66556008)(64756008)(33656002)(8676002)(8936002)(81166006)(81156014)(71200400001)(6506007)(66476007)(6916009)(53546011)(186003)(478600001)(66446008)(66946007);
 DIR:OUT; SFP:1102; SCL:1; SRVR:BYAPR04MB6087;
 H:BYAPR04MB5816.namprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: FhwD+iZm9rO/h9Ho3zqGI1AqmIeIcGYIuNAt75hY8ym/ndxPigWm4K1/1cFN/aKyoQaTpTe/ZVq/yLxc6DbmocxrJtbvk6Y6p2hsqFDQ/g6sLS8a/idteQMv2xA2J8PEfF5lYn/AqWDyY5RgzWeE0jycWU8YslWxE7Z7nCkcYkndrQOnut0Ah1cwN4+nDnFxH16eYO9pJQzgrY3AHGyXZjL+80SgVET59klfr2xBKHQ55AL17puBhvD6QgEQ7vDJYVZlOooVTy8ucYOawmWgtdTwVBO1xu3z/jaV9nkNxFyFyK0R9OZC+/MFLzoPRRl1SJGnqpWbkcQmtzcdgJ4J9jBpsVrDKfpnts2uIjH2sSVgDws8Z1ijQfMJVth1PXk82ZiMGlRF7Ndk4/MGjlPa7+kc5WDE5XyFZ/l4pLv5P6GGQFod5OCQHOSiocYyx4LL
x-ms-exchange-antispam-messagedata: 31qavJDHi89y8HvF/zUDzCjlqy9ui1JVMMaqS/R1b8m3RByaJAo5lENk/ZWf7xKo4PfBT3HrwTQlI4yGmYucW0D/cY+B9DzECJSgBODpRLN9E/4NaTwzYtYEazkaams40KL5GWFqssTNKORks/FiKQ==
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 755b5ffb-e2e6-4ef0-3f0e-08d7b1bb1bae
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Feb 2020 02:02:27.6290 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: JCUkVA0+4ElUriyfHchj8OnpEqwlkZyeD7Jvi9m3rHUNxlnx/PTBdRozi9WwoWMlld4tsFOqgvxe7fo+k901Ng==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR04MB6087
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200214_180235_131675_36C22191 
X-CRM114-Status: GOOD (  19.83  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.154.45 listed in list.dnswl.org]
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
Cc: linux-riscv <linux-riscv@lists.infradead.org>,
 Anup Patel <Anup.Patel@wdc.com>, Palmer Dabbelt <palmer@dabbelt.com>,
 Paul Walmsley <paul.walmsley@sifive.com>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On 2020/02/15 0:06, Carlos Eduardo de Paula wrote:=0A=
> Hi Damien, I've tested the patches on v5.5.0 and it boots perfectly on=0A=
> my MaixGo board. I used the provided initramfs.cpio as the payload and=0A=
> got to the busybox prompt.=0A=
=0A=
Great !=0A=
=0A=
> =0A=
> While trying to build my own busybox, I got a few problems. I've=0A=
> checked-out your tree and copied the toolchain. Then when building=0A=
> busybox with your minimal config, I got this error:=0A=
> =0A=
>   LINK    busybox_unstripped=0A=
> Your linker does not support --sort-section,alignment=0A=
> Your linker does not support --sort-common=0A=
> Your linker does not support -Wl,--gc-sections=0A=
> Trying libraries: m rt=0A=
> Failed: -Wl,--start-group  -lm -lrt  -Wl,--end-group=0A=
> Output of:=0A=
> /opt/riscv64-uclibc/bin/riscv64-linux-gcc -Wall -Wshadow=0A=
> -Wwrite-strings -Wundef -Wstrict-prototypes -Wunused=0A=
> -Wunused-parameter -Wunused-function -Wunused-value=0A=
> -Wmissing-prototypes -Wmissing-declarations -Wno-format-security=0A=
> -Wdeclaration-after-statement -Wold-style-definition -finline-limit=3D0=
=0A=
> -fno-builtin-strlen -fomit-frame-pointer -ffunction-sections=0A=
> -fdata-sections -fno-guess-branch-probability -funsigned-char=0A=
> -static-libgcc -falign-functions=3D1 -falign-jumps=3D1 -falign-labels=3D1=
=0A=
> -falign-loops=3D1 -fno-unwind-tables -fno-asynchronous-unwind-tables=0A=
> -fno-builtin-printf -Wno-string-plus-int -Wno-constant-logical-operand=0A=
> -Os -Os -fPIC --sysroot=3D/opt/riscv64-uclibc/riscv64-buildroot-linux-ucl=
ibc/sysroot/=0A=
> -static -Os -static -Wl,-elf2flt=3D-r -o busybox_unstripped=0A=
> -Wl,--start-group applets/built-in.o archival/lib.a=0A=
> archival/libarchive/lib.a console-tools/lib.a coreutils/lib.a=0A=
> coreutils/libcoreutils/lib.a debianutils/lib.a klibc-utils/lib.a=0A=
> e2fsprogs/lib.a editors/lib.a findutils/lib.a init/lib.a libbb/lib.a=0A=
> libpwdgrp/lib.a loginutils/lib.a mailutils/lib.a miscutils/lib.a=0A=
> modutils/lib.a networking/lib.a networking/libiproute/lib.a=0A=
> networking/udhcp/lib.a printutils/lib.a procps/lib.a runit/lib.a=0A=
> selinux/lib.a shell/lib.a sysklogd/lib.a util-linux/lib.a=0A=
> util-linux/volume_id/lib.a archival/built-in.o=0A=
> archival/libarchive/built-in.o console-tools/built-in.o=0A=
> coreutils/built-in.o coreutils/libcoreutils/built-in.o=0A=
> debianutils/built-in.o klibc-utils/built-in.o e2fsprogs/built-in.o=0A=
> editors/built-in.o findutils/built-in.o init/built-in.o=0A=
> libbb/built-in.o libpwdgrp/built-in.o loginutils/built-in.o=0A=
> mailutils/built-in.o miscutils/built-in.o modutils/built-in.o=0A=
> networking/built-in.o networking/libiproute/built-in.o=0A=
> networking/udhcp/built-in.o printutils/built-in.o procps/built-in.o=0A=
> runit/built-in.o selinux/built-in.o shell/built-in.o=0A=
> sysklogd/built-in.o util-linux/built-in.o=0A=
> util-linux/volume_id/built-in.o -Wl,--end-group -Wl,--start-group -lm=0A=
> -lrt -Wl,--end-group=0A=
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=0A=
> /opt/riscv64-uclibc/riscv64-buildroot-linux-uclibc/bin/ld.real: cannot=0A=
> find crt1.o: No such file or directory=0A=
> /opt/riscv64-uclibc/riscv64-buildroot-linux-uclibc/bin/ld.real: cannot=0A=
> find crti.o: No such file or directory=0A=
> /opt/riscv64-uclibc/riscv64-buildroot-linux-uclibc/bin/ld.real: cannot=0A=
> find crtbeginT.o: No such file or directory=0A=
> collect2: error: ld returned 1 exit status=0A=
> Note: if build needs additional libraries, put them in CONFIG_EXTRA_LDLIB=
S.=0A=
> Example: CONFIG_EXTRA_LDLIBS=3D"pthread dl tirpc audit pam"=0A=
> make: *** [Makefile:718: busybox_unstripped] Error 1=0A=
=0A=
Weird... librt is not needed normally and is actually not generated by the=
=0A=
toolchain due to the absence of native thread support I think. Maybe it was=
=0A=
needed due to some option selection in busybox you did ?=0A=
=0A=
> Then I've built the complete buildroot toolchain and replaced it on /opt.=
=0A=
> =0A=
> Then I've proceeded to "make SKIP_STRIP=3Dy" and "make install" and it=0A=
> built fine. I got into _install dir and ran: "find . | sudo cpio -H=0A=
> newc --create --verbose > ../k210.cpio" to generate the cpio. All this=0A=
> with the=0A=
> =0A=
> Rebuilt the kernel with it but when booting, I got this error:=0A=
> =0A=
> [    0.259289] Run /sbin/init as init process=0A=
> [    0.263480] Run /etc/init as init process=0A=
> [    0.267453] Run /bin/init as init process=0A=
> [    0.286973] Kernel panic - not syncing: Attempted to kill init!=0A=
> exitcode=3D0x00000000=0A=
> [    0.293869] CPU: 1 PID: 1 Comm: sh Not tainted 5.5.0-dirty #19=0A=
> [    0.299673] Call Trace:=0A=
> [    0.302109] [<00000000800401f6>] 0x00000000800401f6=0A=
> [    0.306969] [<000000008004033a>] 0x000000008004033a=0A=
> [    0.311831] [<0000000080111abe>] 0x0000000080111abe=0A=
> [    0.316693] [<000000008004340e>] 0x000000008004340e=0A=
> [    0.321556] [<0000000080045402>] 0x0000000080045402=0A=
> [    0.326417] [<0000000080045898>] 0x0000000080045898=0A=
> [    0.331279] [<000000008003f1d2>] 0x000000008003f1d2=0A=
> [    0.336142] SMP: stopping secondary CPUs=0A=
> [    0.340065] ---[ end Kernel panic - not syncing: Attempted to kill=0A=
> init! exitcode=3D0x00000000 ]---=0A=
=0A=
The busybox _install directory is not enough on its own to become an=0A=
initramfs tree. You need to add some stuff to it. I use the following=0A=
script to build a simple one with _install as a base:=0A=
=0A=
#!/bin/bash=0A=
=0A=
if [ $# !=3D 2 ]; then=0A=
	echo "Usage: $0 <busybox install dir> <cpio img path>"=0A=
	exit 1=0A=
fi=0A=
=0A=
# Prepare=0A=
cd $1=0A=
mkdir dev sys proc tmp root etc=0A=
mkdir dev/pts dev/shm=0A=
=0A=
cd dev=0A=
sudo mknod -m 622 console c 5 1=0A=
sudo mknod -m 666 null c 1 3=0A=
sudo mknod -m 666 zero c 1 5=0A=
sudo mknod -m 666 ptmx c 5 2=0A=
sudo mknod -m 666 tty c 5 0=0A=
sudo mknod -m 444 random c 1 8=0A=
sudo mknod -m 444 urandom c 1 9=0A=
sudo mknod -m 666 ttySIF0 c 4 64=0A=
sudo mknod -m 666 tty0 c 4 0=0A=
sudo chown root:tty {console,ptmx,tty}=0A=
cd ..=0A=
=0A=
# Create image file=0A=
echo "Creating cpio image"=0A=
=0A=
find . | cpio -H newc -o > $2=0A=
=0A=
> =0A=
> I also tried with a gzipped cpio but got the "Kernel panic - not=0A=
> syncing: no cpio magic" error.=0A=
> =0A=
> What's the right way to create the cpio initramfs? I want to customize=0A=
> it a little.=0A=
=0A=
You also need to copy an init script under /bin or /sbin in the _install=0A=
directory before running the above script. The one with the precompiled=0A=
image I wrote is simply:=0A=
=0A=
#!/bin/sh=0A=
=0A=
echo ""=0A=
echo "-----------------------------"=0A=
echo "| Kendryte K210 NOMMU Linux |"=0A=
echo "-----------------------------"=0A=
=0A=
echo "Mounting /proc"=0A=
mount -t proc proc /proc=0A=
=0A=
echo "Starting shell"=0A=
exec /bin/sh=0A=
=0A=
=0A=
At least for the config I use with busybox, I do not get one automatically.=
=0A=
I tend to not use the default busybox init stuff to keep control over what=
=0A=
is done and keep things small overall. But since things are now starting to=
=0A=
work well, we can start experimenting other configs for busybox (e.g. a=0A=
more complete one).=0A=
=0A=
Cheers.=0A=
=0A=
> =0A=
> Thanks.=0A=
> =0A=
=0A=
=0A=
-- =0A=
Damien Le Moal=0A=
Western Digital Research=0A=

