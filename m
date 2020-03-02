Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A30121751FC
	for <lists+linux-riscv@lfdr.de>; Mon,  2 Mar 2020 04:02:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Transfer-Encoding:Content-Type:References:Message-ID:Date:Subject:To:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:List-Owner;
	 bh=yTrwVYBV40g72MSiafNqO1nLNpkZep35VFNMetnUp4s=; b=F74Hvf7TOFWsmpClxXXUTmU5B
	2BUh1U4gLy1GOzZLdQ2cJSaS8mon+d4df8iXWhEgj12VfxieQwd99vuK4bl38kF6hL8Kc2KiFORd7
	XR0Lh50wu5DlKEKzGCAjQd4QMaGCOMmycXuheSwC/naP737NgsxNMck4XsU5dj0+d7hWTOt2ATeAW
	cCQTzFHqj9BhkHhRoK5wKDknwTUFaNxzcYKv4r0jSEbUd2JCU3HvyqzvVuUuIBoI6c89SX7So9NbE
	KkdJXUWDaCdnfaCNSwTIr/5OW/dof+vUpYjrdBX0UMD3IJ8l9MM1h0SkiN9FAJeVsTuzp3mTpqLSJ
	g7V25YybA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j8bLN-0002GR-2u; Mon, 02 Mar 2020 03:02:09 +0000
Received: from esa4.hgst.iphmx.com ([216.71.154.42])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j8bLI-0002Ft-Q4
 for linux-riscv@lists.infradead.org; Mon, 02 Mar 2020 03:02:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1583118124; x=1614654124;
 h=from:to:cc:subject:date:message-id:references:
 content-transfer-encoding:mime-version;
 bh=jzggCKmLr14Ivf6iDD6pfKJ8e1PjeVfk19V2Lio00gA=;
 b=i24NRFBUBwB0qTy5wSxv8Vnh98rKIBW9fC7rKz0z2RVR58sGYgelgav5
 1b5J/rWiQf3Q/+JLPSsTb3pXVA0ZRv0lLyeKUCXE4HpDk2ZkUraI8P/qN
 iEt+/tb4j3YA1pV7WGUGwyIm2fFuL9A5fHfSbxVzmbZH8d5ELzrj9tnKO
 89MPsOn8NjL3ct64C7y82Qzc9cVIJYNZxo0SAqwHsBZOpcGq3he+SfNWT
 dcZghIrpQKlql0/wqBDFwpUyjHisbjN52s9n0y9A0LGWK7YgSG/JHJYhe
 ui+b76ZqaZqswVPninCtB/5M5wko1byNH2NzkOhGLCdXoI9LmReqJoU4Q w==;
IronPort-SDR: LeMGoWPSdeEZdWOK5wVCRRdvXGjudwB+t17X10/qbQaxSOSEMiDh2k849aHRrdvDZDn/WM4f4F
 xWpJIYnVRbkx0b526t6RtxwwTRHI9q0ewozbRf9G2omv8VUv3EbbB9HkpCIKaqW2Zyv8IbzKFB
 mv+voKG29NM47Gkjjqi32EjfXquoMUvIR/2MTCyELVvXt1wCMcUnMiH7o8hlGPxawg8f2tNxK8
 eh0ynQ0IkASfouWb2niS+Dkhns5QD7hV8xVjCYptwvACWx6QMspmG92LslaAEGaJ/YEB8Vt5yV
 D0k=
X-IronPort-AV: E=Sophos;i="5.70,506,1574092800"; d="scan'208";a="131114457"
Received: from mail-dm6nam12lp2171.outbound.protection.outlook.com (HELO
 NAM12-DM6-obe.outbound.protection.outlook.com) ([104.47.59.171])
 by ob1.hgst.iphmx.com with ESMTP; 02 Mar 2020 11:01:57 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Oe7z2hSvSsSt0OMlUmpZfS8XcD9/GRRFbTUpFotEdel8Ili6VbR6x2XEFJqnfJ75QmBByH/e62JjaGMl616fnKip5nZoTE8KaNCEpbAQ/uJ6ljkEZkwjyBNCNxHjcFY36pDpRV9MHLhHL7jxDIMPSosSoJZNU4wKQEzvjhUTpo59oHrLxLFPdb88x4AXVPTQQ5zR35L7KTXpcSxKzBNpHiyh0SqFk/VDZT2stsSFVJZAaLtEtiX+H58b9bfBomEH20xc8jofiO8P4aWC8Hr1Erb/Q3lWe/J6Q43v/LuPfPzXXcVzjHz3Gx1zn3IALbSAMCeMJep0KGWElO4iiSlr0A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=yTrwVYBV40g72MSiafNqO1nLNpkZep35VFNMetnUp4s=;
 b=NoJfIg+hfsLLliAAon9Y8SM37ZinN1v+T6e5dQ4Tbszbok9DmD2VpjPJji5ijY0ceoVLhcEyslFbwWc9xCj50+c4jxp+AFelhe3VwsrIpx9gaMOSk2jcMRjdw6WpoEc+VstCoGXhPhRNcLHVX7RBnXZIVqhwyGSbBIwEWEuWRB86+yTptGxOkMeEssX1PMToq4IDcc7fiiLmcrca4BGRnew3vltFiobFfB2q87t0/PKr+TeKtqK6nvQG05GXjsboA657W6D5Ju3qPzsWA5/Ehd2gU47MwSj8agGXmkutw9zLLhKHUFxGmO8CNm7YrPzr9yzJgombCju3yxrm2uigwA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wdc.com; dmarc=pass action=none header.from=wdc.com; dkim=pass
 header.d=wdc.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=yTrwVYBV40g72MSiafNqO1nLNpkZep35VFNMetnUp4s=;
 b=gYwP2vW8aptDHV72I/BF4j8gOQ3WoCm1qgytkvTQlQLrRs8MickNtAKDKJSMk2IHs1gzLwGKT5lgp3syjFqa9KB5lh1zE1yHucAB2RUkJGy13B0i7uLgZ7130613Qz+6qOvaHjmULgQmtiYaM4cdN9ZGVq+afB9hVJlZxtRN7o8=
Received: from BYAPR04MB5816.namprd04.prod.outlook.com (2603:10b6:a03:10e::16)
 by BYAPR04MB5110.namprd04.prod.outlook.com (2603:10b6:a03:49::31)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2772.15; Mon, 2 Mar
 2020 03:01:55 +0000
Received: from BYAPR04MB5816.namprd04.prod.outlook.com
 ([fe80::6daf:1b7c:1a61:8cb2]) by BYAPR04MB5816.namprd04.prod.outlook.com
 ([fe80::6daf:1b7c:1a61:8cb2%6]) with mapi id 15.20.2772.019; Mon, 2 Mar 2020
 03:01:55 +0000
From: Damien Le Moal <Damien.LeMoal@wdc.com>
To: Sean Anderson <seanga2@gmail.com>, "linux-riscv@lists.infradead.org"
 <linux-riscv@lists.infradead.org>, Palmer Dabbelt <palmer@dabbelt.com>
Subject: Re: [PATCH 00/10] Kendryte k210 SoC boards support
Thread-Topic: [PATCH 00/10] Kendryte k210 SoC boards support
Thread-Index: AQHV7nY646/VURUiUEOLVfw+FTteGg==
Date: Mon, 2 Mar 2020 03:01:55 +0000
Message-ID: <BYAPR04MB581679CF61DF51E1588D7960E7E70@BYAPR04MB5816.namprd04.prod.outlook.com>
References: <20200212103432.660256-1-damien.lemoal@wdc.com>
 <5be71201-962c-5db6-c330-f30a770c4034@gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Damien.LeMoal@wdc.com; 
x-originating-ip: [2400:2411:43c0:6000:a0da:2777:d33b:3f32]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 9b80725a-ac91-4d1e-c912-08d7be5610fd
x-ms-traffictypediagnostic: BYAPR04MB5110:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <BYAPR04MB51108FFD7BCF803DA1F0973BE7E70@BYAPR04MB5110.namprd04.prod.outlook.com>
wdcipoutbound: EOP-TRUE
x-ms-oob-tlc-oobclassifiers: OLM:6108;
x-forefront-prvs: 033054F29A
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(366004)(346002)(396003)(136003)(376002)(39860400002)(199004)(189003)(9686003)(316002)(54906003)(110136005)(55016002)(30864003)(33656002)(5660300002)(86362001)(7696005)(71200400001)(186003)(2906002)(52536014)(4326008)(8936002)(81166006)(53546011)(6506007)(478600001)(81156014)(66946007)(76116006)(66446008)(66556008)(64756008)(8676002)(66476007);
 DIR:OUT; SFP:1102; SCL:1; SRVR:BYAPR04MB5110;
 H:BYAPR04MB5816.namprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: wE66P9dFxnGvPKcIqcWPpuHai6d1cpGDPvQGP41hyz1b0hag7qiOetL91fmkVdx4if6JFdNN5FdeOCA9E8GKKgeymlNlb0pYzG/MN3X15d0S9WAR84qZjqTPKZkflHRD0jfJ2hlhcVpTMRt1Sc7YZdmsRPuoPJhfdp7+mz6O03ROvlHxSCPB85JsjwRj6uq2aNFMulcq/SL4gsVPuXv64kq8iLw2kMIy3kuJOe1igsGXNv0VMMd5mpnJzRwcYBZYWe0FQdkP6Qie01U1EbM1WVRoZ7RL2iKmNmmUHEn2JD3ewBaH2ZTAMs2Qm5DQDNKjRa8KUYoVizakuvW57hsp6He0Q6rce+OmSxF0XYctpBoA4d2OmKJTnRNn2VQA1g1RJ49/Kzj3Yovb078gvhf0YS//zDaIhNISqfGkInvcpItwZvMHiGQJbkRJtdze/puI
x-ms-exchange-antispam-messagedata: wy/hD279KA+ya36pY+wrGWmwkCqgg/GrYWrCDbTabHJyo2Nsd2Myqge4TYUBXkunuMFwfQVFmxzoPbdDRc27vGEAKgBq3dozKE2sgRXK1ZjPrzn2dhgG5MR/J462W3cfl5jQ3l9ZE7jv1N5oVVsSUNvj1WEN9To8Ple1eS1Krq+UR6AcYhdnwg9J35njLh+yQD+BvLhZj3qDOIjexx3RJg==
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9b80725a-ac91-4d1e-c912-08d7be5610fd
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Mar 2020 03:01:55.6147 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: /d0n63cMGbOW/0dLrwSR52ZRoUUxw0LWOJQ4jy/yPlpUdTNzV7GtU2xcSKbZiDmr1zqDjTp5IRl3+Bv4Lzy0oA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR04MB5110
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200301_190205_074666_4A959EDD 
X-CRM114-Status: GOOD (  11.90  )
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

On 2020/02/29 5:32, Sean Anderson wrote:=0A=
> Hi,=0A=
> =0A=
> When booting from U-Boot I get an OOM. Perhaps this is related to the=0A=
> second cpu not coming up?=0A=
=0A=
Unlikely. It looks like your user space needs 2MB per shell (order 9=0A=
allocation). Since you have only 5.5MB free, that may explain the allocatio=
n=0A=
failure (if init is forking another shell especially).=0A=
=0A=
For the second core not coming up, an IPI needs to be sent to the non-boot =
core=0A=
to wake it up. A Kendryte thing. U-boot should probably do it before jumpin=
g to=0A=
the kernel. I thought I had that in the kernel though. Will check again.=0A=
=0A=
> =0A=
> =3D> go 80000000=0A=
> ## Starting application at 0x80000000 ...=0A=
> [    0.000000] Linux version 5.6.0-rc1-00054-gd32122774dab (sean@godwin) =
(gcc version 9.2.0 (GCC)) #12 SMP Fri Feb 28 14:34:45 EST 2020=0A=
> [    0.000000] earlycon: sifive0 at MMIO 0x0000000038000000 (options '')=
=0A=
> [    0.000000] printk: bootconsole [sifive0] enabled=0A=
> [    0.000000] initrd not found or empty - disabling initrd=0A=
> [    0.000000] Zone ranges:=0A=
> [    0.000000]   DMA32    [mem 0x0000000080000000-0x00000000807fffff]=0A=
> [    0.000000]   Normal   empty=0A=
> [    0.000000] Movable zone start for each node=0A=
> [    0.000000] Early memory node ranges=0A=
> [    0.000000]   node   0: [mem 0x0000000080000000-0x00000000807fffff]=0A=
> [    0.000000] Initmem setup node 0 [mem 0x0000000080000000-0x00000000807=
fffff]=0A=
> [    0.000000] elf_hwcap is 0x112d=0A=
> [    0.000000] percpu: max_distance=3D0x18000 too large for vmalloc space=
 0x0=0A=
> [    0.000000] percpu: Embedded 12 pages/cpu s18272 r0 d30880 u49152=0A=
> [    0.000000] Built 1 zonelists, mobility grouping off.  Total pages: 20=
20=0A=
> [    0.000000] Kernel command line: earlycon console=3DttySIF0=0A=
> [    0.000000] Dentry cache hash table entries: 1024 (order: 1, 8192 byte=
s, linear)=0A=
> [    0.000000] Inode-cache hash table entries: 512 (order: 0, 4096 bytes,=
 linear)=0A=
> [    0.000000] Sorting __ex_table...=0A=
> [    0.000000] mem auto-init: stack:off, heap alloc:off, heap free:off=0A=
> [    0.000000] Memory: 5528K/8192K available (918K kernel code, 106K rwda=
ta, 166K rodata, 1129K init, 91K bss, 2664K reserved, 0K cma-reserved)=0A=
> [    0.000000] rcu: Hierarchical RCU implementation.=0A=
> [    0.000000] rcu: RCU calculated value of scheduler-enlistment delay is=
 25 jiffies.=0A=
> [    0.000000] NR_IRQS: 0, nr_irqs: 0, preallocated irqs: 0=0A=
> [    0.000000] plic: mapped 65 interrupts with 2 handlers for 4 contexts.=
=0A=
> [    0.000000] riscv_timer_init_dt: Registering clocksource cpuid [0] har=
tid [0]=0A=
> [    0.000000] clocksource: riscv_clocksource: mask: 0xffffffffffffffff m=
ax_cycles: 0x3990be68b, max_idle_ns: 881590404272 ns=0A=
> [    0.000015] sched_clock: 64 bits at 7MHz, resolution 128ns, wraps ever=
y 4398046511054ns=0A=
> [    0.008238] Console: colour dummy device 80x25=0A=
> [    0.012477] Calibrating delay loop (skipped), value calculated using t=
imer frequency.. 15.60 BogoMIPS (lpj=3D31200)=0A=
> [    0.022684] pid_max: default: 4096 minimum: 301=0A=
> [    0.027302] Mount-cache hash table entries: 512 (order: 0, 4096 bytes,=
 linear)=0A=
> [    0.034423] Mountpoint-cache hash table entries: 512 (order: 0, 4096 b=
ytes, linear)=0A=
> [    0.044826] rcu: Hierarchical SRCU implementation.=0A=
> [    0.049623] smp: Bringing up secondary CPUs ...=0A=
> [    1.083970] CPU1: failed to come online=0A=
> [    1.087079] smp: Brought up 1 node, 1 CPU=0A=
> [    1.092006] devtmpfs: initialized=0A=
> [    1.098586] clocksource: jiffies: mask: 0xffffffff max_cycles: 0xfffff=
fff, max_idle_ns: 7645041785100000 ns=0A=
> [    1.107609] futex hash table entries: 16 (order: -2, 1024 bytes, linea=
r)=0A=
> [    1.115619] Kendryte K210 SoC sysctl=0A=
> [    1.129362] clocksource: Switched to clocksource riscv_clocksource=0A=
> [    1.385690] swapper/0: page allocation failure: order:9, mode:0x100cc2=
(GFP_HIGHUSER), nodemask=3D(null)=0A=
> [    1.394224] CPU: 0 PID: 1 Comm: swapper/0 Not tainted 5.6.0-rc1-00054-=
gd32122774dab #12=0A=
> [    1.402129] Call Trace:=0A=
> [    1.404565] [<000000008011c2f2>] 0x000000008011c2f2=0A=
> [    1.409426] [<000000008011c436>] 0x000000008011c436=0A=
> [    1.414287] [<00000000801ed86e>] 0x00000000801ed86e=0A=
> [    1.419150] [<00000000801740c0>] 0x00000000801740c0=0A=
> [    1.424012] [<00000000801743d4>] 0x00000000801743d4=0A=
> [    1.428874] [<00000000801746da>] 0x00000000801746da=0A=
> [    1.433736] [<00000000801ababe>] 0x00000000801ababe=0A=
> [    1.438598] [<00000000801abbf2>] 0x00000000801abbf2=0A=
> [    1.443460] [<000000008018b06a>] 0x000000008018b06a=0A=
> [    1.448322] [<0000000080176de0>] 0x0000000080176de0=0A=
> [    1.453184] [<0000000080176fd2>] 0x0000000080176fd2=0A=
> [    1.458047] [<0000000080001b8a>] 0x0000000080001b8a=0A=
> [    1.462909] [<000000008000145a>] 0x000000008000145a=0A=
> [    1.467771] [<00000000800014b0>] 0x00000000800014b0=0A=
> [    1.472633] [<000000008000e7cc>] 0x000000008000e7cc=0A=
> [    1.477495] [<000000008000e80c>] 0x000000008000e80c=0A=
> [    1.482357] [<0000000080001e44>] 0x0000000080001e44=0A=
> [    1.487219] [<0000000080000a80>] 0x0000000080000a80=0A=
> [    1.492081] [<0000000080000ce4>] 0x0000000080000ce4=0A=
> [    1.496943] [<00000000801fd934>] 0x00000000801fd934=0A=
> [    1.501805] [<000000008011b304>] 0x000000008011b304=0A=
> [    1.506918] Mem-Info:=0A=
> [    1.508957] active_anon:0 inactive_anon:0 isolated_anon:0=0A=
> [    1.508957]  active_file:0 inactive_file:0 isolated_file:0=0A=
> [    1.508957]  unevictable:315 dirty:0 writeback:0 unstable:0=0A=
> [    1.508957]  slab_reclaimable:0 slab_unreclaimable:215=0A=
> [    1.508957]  mapped:0 shmem:0 pagetables:0 bounce:0=0A=
> [    1.508957]  free:795 free_pcp:0 free_cma:0=0A=
> [    1.539593] Node 0 active_anon:0kB inactive_anon:0kB active_file:0kB i=
nactive_file:0kB unevictable:1260kB isolated(anon):0kB isolated(file):0kB m=
apped:0kB dirty:0kB writeback:0kB shmem:0kB writeback_tmp:0kB unstable:0kB =
all_unreclaimable? no=0A=
> [    1.560939] DMA32 free:3180kB min:296kB low:368kB high:440kB reserved_=
highatomic:0KB active_anon:0kB inactive_anon:0kB active_file:0kB inactive_f=
ile:0kB unevictable:1260kB writepending:0kB present:8192kB managed:5528kB m=
locked:0kB kernel_stack:168kB pagetables:0kB bounce:0kB free_pcp:0kB local_=
pcp:0kB free_cma:0kB=0A=
> [    1.588696] lowmem_reserve[]: 0 0 0=0A=
> [    1.592118] DMA32: 1*4kB (U) 1*8kB (M) 0*16kB 1*32kB (U) 1*64kB (U) 2*=
128kB (UM) 1*256kB (U) 1*512kB (M) 2*1024kB (UM) 0*2048kB 0*4096kB =3D 3180=
kB=0A=
> [    1.605162] 328 total pagecache pages=0A=
> [    1.608788] 2048 pages RAM=0A=
> [    1.611479] 0 pages HighMem/MovableOnly=0A=
> [    1.615299] 666 pages reserved=0A=
> [    1.743951] swapper/0 invoked oom-killer: gfp_mask=3D0x100cc2(GFP_HIGH=
USER), order=3D0, oom_score_adj=3D0=0A=
> [    1.752280] CPU: 0 PID: 1 Comm: swapper/0 Not tainted 5.6.0-rc1-00054-=
gd32122774dab #12=0A=
> [    1.760209] Call Trace:=0A=
> [    1.762645] [<000000008011c2f2>] 0x000000008011c2f2=0A=
> [    1.767506] [<000000008011c436>] 0x000000008011c436=0A=
> [    1.772368] [<00000000801ed86e>] 0x00000000801ed86e=0A=
> [    1.777230] [<00000000801634e2>] 0x00000000801634e2=0A=
> [    1.782092] [<00000000801633c6>] 0x00000000801633c6=0A=
> [    1.786954] [<000000008017451e>] 0x000000008017451e=0A=
> [    1.791816] [<00000000801746da>] 0x00000000801746da=0A=
> [    1.796678] [<0000000080161648>] 0x0000000080161648=0A=
> [    1.801540] [<000000008016241e>] 0x000000008016241e=0A=
> [    1.806402] [<0000000080192fc6>] 0x0000000080192fc6=0A=
> [    1.811264] [<00000000801624a6>] 0x00000000801624a6=0A=
> [    1.816127] [<000000008016262c>] 0x000000008016262c=0A=
> [    1.820989] [<000000008016267e>] 0x000000008016267e=0A=
> [    1.825851] [<0000000080178178>] 0x0000000080178178=0A=
> [    1.830713] [<00000000801781c0>] 0x00000000801781c0=0A=
> [    1.835575] [<0000000080178b5c>] 0x0000000080178b5c=0A=
> [    1.840437] [<0000000080178c82>] 0x0000000080178c82=0A=
> [    1.845299] [<0000000080001678>] 0x0000000080001678=0A=
> [    1.850161] [<0000000080001724>] 0x0000000080001724=0A=
> [    1.855023] [<000000008000145a>] 0x000000008000145a=0A=
> [    1.859885] [<00000000800014b0>] 0x00000000800014b0=0A=
> [    1.864748] [<000000008000e7cc>] 0x000000008000e7cc=0A=
> [    1.869609] [<000000008000e80c>] 0x000000008000e80c=0A=
> [    1.874472] [<0000000080001e44>] 0x0000000080001e44=0A=
> [    1.879334] [<0000000080000a80>] 0x0000000080000a80=0A=
> [    1.884196] [<0000000080000ce4>] 0x0000000080000ce4=0A=
> [    1.889058] [<00000000801fd934>] 0x00000000801fd934=0A=
> [    1.893920] [<000000008011b304>] 0x000000008011b304=0A=
> [    1.899086] Mem-Info:=0A=
> [    1.901072] active_anon:0 inactive_anon:0 isolated_anon:0=0A=
> [    1.901072]  active_file:0 inactive_file:0 isolated_file:0=0A=
> [    1.901072]  unevictable:705 dirty:0 writeback:0 unstable:0=0A=
> [    1.901072]  slab_reclaimable:0 slab_unreclaimable:215=0A=
> [    1.901072]  mapped:0 shmem:0 pagetables:0 bounce:0=0A=
> [    1.901072]  free:417 free_pcp:0 free_cma:0=0A=
> [    1.931708] Node 0 active_anon:0kB inactive_anon:0kB active_file:0kB i=
nactive_file:0kB unevictable:2820kB isolated(anon):0kB isolated(file):0kB m=
apped:0kB dirty:0kB writeback:0kB shmem:0kB writeback_tmp:0kB unstable:0kB =
all_unreclaimable? no=0A=
> [    1.953051] DMA32 free:1668kB min:4392kB low:4464kB high:4536kB reserv=
ed_highatomic:0KB active_anon:0kB inactive_anon:0kB active_file:0kB inactiv=
e_file:0kB unevictable:2820kB writepending:0kB present:8192kB managed:5528k=
B mlocked:0kB kernel_stack:168kB pagetables:0kB bounce:0kB free_pcp:0kB loc=
al_pcp:0kB free_cma:0kB=0A=
> [    1.981067] lowmem_reserve[]: 0 0 0=0A=
> [    1.984492] DMA32: 1*4kB (U) 0*8kB 0*16kB 0*32kB 0*64kB 1*128kB (U) 0*=
256kB 1*512kB (U) 1*1024kB (U) 0*2048kB 0*4096kB =3D 1668kB=0A=
> [    1.995970] 704 total pagecache pages=0A=
> [    1.999599] 2048 pages RAM=0A=
> [    2.002291] 0 pages HighMem/MovableOnly=0A=
> [    2.006110] 666 pages reserved=0A=
> [    2.009131] Tasks state (memory values in pages):=0A=
> [    2.013848] [  pid  ]   uid  tgid total_vm      rss pgtables_bytes swa=
pents oom_score_adj name=0A=
> [    2.022450] Out of memory and no killable processes...=0A=
> [    2.027562] Kernel panic - not syncing: System is deadlocked on memory=
=0A=
> [    2.034062] CPU: 0 PID: 1 Comm: swapper/0 Not tainted 5.6.0-rc1-00054-=
gd32122774dab #12=0A=
> [    2.042036] Call Trace:=0A=
> [    2.044472] [<000000008011c2f2>] 0x000000008011c2f2=0A=
> [    2.049333] [<000000008011c436>] 0x000000008011c436=0A=
> [    2.054195] [<00000000801ed86e>] 0x00000000801ed86e=0A=
> [    2.059057] [<000000008011f4d8>] 0x000000008011f4d8=0A=
> [    2.063919] [<00000000801633ea>] 0x00000000801633ea=0A=
> [    2.068782] [<000000008017451e>] 0x000000008017451e=0A=
> [    2.073644] [<00000000801746da>] 0x00000000801746da=0A=
> [    2.078506] [<0000000080161648>] 0x0000000080161648=0A=
> [    2.083368] [<000000008016241e>] 0x000000008016241e=0A=
> [    2.088230] [<0000000080192fc6>] 0x0000000080192fc6=0A=
> [    2.093092] [<00000000801624a6>] 0x00000000801624a6=0A=
> [    2.097954] [<000000008016262c>] 0x000000008016262c=0A=
> [    2.102816] [<000000008016267e>] 0x000000008016267e=0A=
> [    2.107678] [<0000000080178178>] 0x0000000080178178=0A=
> [    2.112541] [<00000000801781c0>] 0x00000000801781c0=0A=
> [    2.117403] [<0000000080178b5c>] 0x0000000080178b5c=0A=
> [    2.122265] [<0000000080178c82>] 0x0000000080178c82=0A=
> [    2.127127] [<0000000080001678>] 0x0000000080001678=0A=
> [    2.131989] [<0000000080001724>] 0x0000000080001724=0A=
> [    2.136851] [<000000008000145a>] 0x000000008000145a=0A=
> [    2.141713] [<00000000800014b0>] 0x00000000800014b0=0A=
> [    2.146575] [<000000008000e7cc>] 0x000000008000e7cc=0A=
> [    2.151437] [<000000008000e80c>] 0x000000008000e80c=0A=
> [    2.156299] [<0000000080001e44>] 0x0000000080001e44=0A=
> [    2.161162] [<0000000080000a80>] 0x0000000080000a80=0A=
> [    2.166024] [<0000000080000ce4>] 0x0000000080000ce4=0A=
> [    2.170886] [<00000000801fd934>] 0x00000000801fd934=0A=
> [    2.175748] [<000000008011b304>] 0x000000008011b304=0A=
> [    2.180624] ---[ end Kernel panic - not syncing: System is deadlocked =
on memory ]---=0A=
> =0A=
> =0A=
> =0A=
> =0A=
=0A=
=0A=
-- =0A=
Damien Le Moal=0A=
Western Digital Research=0A=

