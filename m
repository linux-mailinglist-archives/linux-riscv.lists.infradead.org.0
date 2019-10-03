Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 56EA1C97CB
	for <lists+linux-riscv@lfdr.de>; Thu,  3 Oct 2019 07:08:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HsIxoXvyyl4xJjTS9uzcDi9k982k6FsOHm+9pLRc3ds=; b=DRRGlFOAKowRHD
	Sh9zmby58I2RUP42Swk78HadNiNilC4fUOS55RxNDdJGrl5YdonN4x2OGpDb3pRPAtkvRKO9xmO6X
	OxjyVElWRlCi6E67DgYBbB/rABraukX6CZj4ohOgdJCSf6F7v/w7nIkJtoyezYsYgn1mbKC+TMm3K
	3FhAjbR1oYWDLS13SrvbIQ25qbyDIdgRFRJVUMPKUefQdy3DMxnp5IdjNIbF5yC+LTVGQ6iOy++TX
	eCkWQ0g1YBsi6O69N8ZfIVNS819RqiWVdRyXr7h+KZajWD9jLGRoru2AnXuqOfuL9NIEe2DBMSOy0
	EEvE9LDRhkAmVQkSg3tw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFtMA-0004i2-VV; Thu, 03 Oct 2019 05:08:50 +0000
Received: from esa2.hgst.iphmx.com ([68.232.143.124])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFtM6-0004hO-VS
 for linux-riscv@lists.infradead.org; Thu, 03 Oct 2019 05:08:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1570079338; x=1601615338;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=I5TOrsqtVvuRTKqrh7Cq4V4sM1VGWVgxcVHmmBk8H8M=;
 b=bPTxVIUHnEo4C6qoj+ku4CMd3jn5OVO8Qbli5hRm3bmVvpNb2hVcDn34
 8qxO9jXi9k3vyPymgTvSbyxohxDAZZSSiRcpGxoRQIo+1oyCSc2h4bn6a
 4uhWPmNoMMirbrCTc4jrQf35Z3jOtQKs6XgiFo9P8Af3odAEjx1bLT3up
 fMCzP7/Dq4FURWaIwCYcCH5lY7GtCVIyNOCVF4fTfL8SJ+0V+T0vXiIr9
 RU6iMiqG7Ql0VuXZU3KfUphfSXc8RNGHhaOSrGpVeD47Jb0mWAmDq24cg
 OYb3fM/m47t0bJb4V8xyVul+ZiUfUL1fuj2B1dHUFC3l9DwZCUISH3doZ A==;
IronPort-SDR: jiv3WoKbv8iYq77tYJ5kIAwvFdbHl5RhhdEeDR+U9sxkw5f7zsKxwb7yRPjPoXy2+nUiSJNc7z
 7WdFukT0/isOfkZkNGVRzung2x8xcM6QOQDiZihmTwbrWv79euetz3uvIBjgiV/Z7DbON6stTk
 Jb7tIqulShDVKu2221AzadtZDaaqVd5I4O+lnDZIbwXlsPGnCXsWKFGMqlq4N/lbfq6IEMyVeq
 hB/KrM/kHzyGa99F4y8v8mzY+x5xM/D8oQXZCTXoWh/e8bqd+nbUqde/wZ2BVGGMQ1PoHOul9f
 ipM=
X-IronPort-AV: E=Sophos;i="5.67,251,1566835200"; d="scan'208";a="220620964"
Received: from mail-co1nam05lp2056.outbound.protection.outlook.com (HELO
 NAM05-CO1-obe.outbound.protection.outlook.com) ([104.47.48.56])
 by ob1.hgst.iphmx.com with ESMTP; 03 Oct 2019 13:08:53 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=as4x0Wu/1N5P9dSMpGr8OsSfdwwZEK/00bpPcvarbBddc/gMAPKm+WQ7oa0R3ZVcOxck1NbVUsLp8nhLPq5kwBjHOLvfwVnuaOLIHixzo6saU27wnC7B9tG+ILYj3OOkWor5hU1ywnW311GkaV6sxUh6j8JiHWB/G33+yUwE5/Ig8B09d073TrqkdjHY5hQE82v0tR9gPNFi53DtKzQxDPYFqO73hzvJ49/giuMwccPWH93Ikg216zbwIMxd3p67ZDRFjvL3on3QoFHvMYaIUtPxc20+ASDmqLQAk29FEQMGxh6rdiiyGV/Z0bIPWLWh62KcTqJU2oQx8XUq6h2I0Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=PoJ8pfpI5dTJHPPel0IttbvqQeo9z28YxuHukEFvOiM=;
 b=E3H525FE6czA0tfJBwSg5fyax8N4nL4WDmZHHpJfze2sI1zzEXddunSfDne585kNKmrwRE1flv1W0y4ZpsRq8/6eO7mD0cMni01W4Rc1kRYOJhWEu49HquzXGBHwM6L2o5Ty8AGpGfuD7WPaSLGgXXoTgXamZxkDTRQlZpz+Y7jPHeiVb/BbZmC/dhfWjI843/zgEPi72uSWLoylNIhdT1ARs+xTD7Nk5H3Gq8P6ZttJVBUTKphvSX+uxRT8ZbQyWXHUDgajca6YIel15AJnrvJY1dwle6UPqWSeMcTnhwZPJNn94dL6anOVukS25zzNe2ENCEZ7xKbgAkRzgRjzrw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wdc.com; dmarc=pass action=none header.from=wdc.com; dkim=pass
 header.d=wdc.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=PoJ8pfpI5dTJHPPel0IttbvqQeo9z28YxuHukEFvOiM=;
 b=e6Xq4JsApYjjJk03rs1h87wCo9/ezRwZiU/7Q/UWc63bIMpbY04wujg8Y6Lwe3mtMwNoTTp6CEhceQb6tdtQ6tadNnnjE0FYP143PKDXdvyRfVEyl5GXZNMSCxq0TDONzy7pxEAwz/bCHQ2tVNi9m1bAYXFlkVsBwsP0YOJDg9Q=
Received: from MN2PR04MB6061.namprd04.prod.outlook.com (20.178.246.15) by
 MN2PR04MB6272.namprd04.prod.outlook.com (20.178.248.27) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2305.17; Thu, 3 Oct 2019 05:08:42 +0000
Received: from MN2PR04MB6061.namprd04.prod.outlook.com
 ([fe80::1454:87a:13b0:d3a]) by MN2PR04MB6061.namprd04.prod.outlook.com
 ([fe80::1454:87a:13b0:d3a%7]) with mapi id 15.20.2305.023; Thu, 3 Oct 2019
 05:08:42 +0000
From: Anup Patel <Anup.Patel@wdc.com>
To: Palmer Dabbelt <palmer@sifive.com>, Paul Walmsley
 <paul.walmsley@sifive.com>, Paolo Bonzini <pbonzini@redhat.com>, Radim K
 <rkrcmar@redhat.com>
Subject: [PATCH v8 18/19] RISC-V: KVM: Document RISC-V specific parts of KVM
 API.
Thread-Topic: [PATCH v8 18/19] RISC-V: KVM: Document RISC-V specific parts of
 KVM API.
Thread-Index: AQHVeaigvJ4hGft79EmXR9Xkj/55rw==
Date: Thu, 3 Oct 2019 05:08:42 +0000
Message-ID: <20191003050558.9031-19-anup.patel@wdc.com>
References: <20191003050558.9031-1-anup.patel@wdc.com>
In-Reply-To: <20191003050558.9031-1-anup.patel@wdc.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: BMXPR01CA0030.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:b00:c::16) To MN2PR04MB6061.namprd04.prod.outlook.com
 (2603:10b6:208:d8::15)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Anup.Patel@wdc.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-mailer: git-send-email 2.17.1
x-originating-ip: [111.235.74.37]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 75489bb8-eb09-47da-35f0-08d747bfc268
x-ms-office365-filtering-ht: Tenant
x-ms-traffictypediagnostic: MN2PR04MB6272:
x-ms-exchange-purlcount: 1
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MN2PR04MB6272766A9F339DD6A1DD80B68D9F0@MN2PR04MB6272.namprd04.prod.outlook.com>
wdcipoutbound: EOP-TRUE
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 01792087B6
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(136003)(376002)(346002)(366004)(396003)(39860400002)(189003)(199004)(6512007)(6306002)(6486002)(81166006)(81156014)(8936002)(6116002)(3846002)(8676002)(50226002)(2906002)(110136005)(66066001)(6436002)(316002)(66476007)(66556008)(7416002)(66446008)(36756003)(1076003)(5660300002)(54906003)(7736002)(305945005)(76176011)(25786009)(52116002)(256004)(14444005)(71190400001)(86362001)(99286004)(71200400001)(2616005)(446003)(14454004)(476003)(102836004)(186003)(26005)(11346002)(966005)(44832011)(6506007)(486006)(478600001)(4326008)(66946007)(386003)(64756008);
 DIR:OUT; SFP:1102; SCL:1; SRVR:MN2PR04MB6272;
 H:MN2PR04MB6061.namprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: bxecYzqNI/JDh/5OzHevz/dP8sHY5ipCl9xXjsw1F7XlASdF0QhuSrygp5CRsmbVqthpicGDkHeAFm6g74yzFMTU4xzp/8yuctSEny82rk+H65Pb9DjSGmbihtfRaTrEt7fWvec0lp2r5z0KdsYN5Y9fobIB4hRW8v6WyQs6MbZp+nc5PERu/SCIh3HSlLcu7RbhBRtRmYvDFVv/CzoE+/H7qgwxG0NVVfCMtIfqtiEqQ4qPUt+w3leQy0kSxBj1B6inV39wYQffINQ8dW8uzf+xyLiVx8cchTvk9AWi4Ffd8oY1RN846jjyVdLQNa3BLjKY5SjDu9WJNeyB5hiyu1/0RR8e5IJ6j6G/rS2lyaRQwyXPemej/kG7QFu2tzs11JuC/jBi89R4p74fTYBgDQwh1k7yKTAtde/dOki+6Y5Qn3ujd9pPb9hejvZJqEU49GV1Dldw0WXD2OFfNb3atQ==
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 75489bb8-eb09-47da-35f0-08d747bfc268
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Oct 2019 05:08:42.5937 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: SF5TOdRsWLEdulv5IcDtziMRIdaSelRxUBkkuNFgvEt9UMnGOvW5w88OQOv1S5rRpEVil5EVsuRlPwfjL9bPWw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR04MB6272
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191002_220847_065694_937C5508 
X-CRM114-Status: GOOD (  16.38  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.143.124 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Damien Le Moal <Damien.LeMoal@wdc.com>, Anup Patel <Anup.Patel@wdc.com>,
 "kvm@vger.kernel.org" <kvm@vger.kernel.org>, Anup Patel <anup@brainfault.org>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Christoph Hellwig <hch@infradead.org>, Atish Patra <Atish.Patra@wdc.com>,
 Alexander Graf <graf@amazon.com>, Alistair Francis <Alistair.Francis@wdc.com>,
 Thomas Gleixner <tglx@linutronix.de>,
 "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Document RISC-V specific parts of the KVM API, such as:
 - The interrupt numbers passed to the KVM_INTERRUPT ioctl.
 - The states supported by the KVM_{GET,SET}_MP_STATE ioctls.
 - The registers supported by the KVM_{GET,SET}_ONE_REG interface
   and the encoding of those register ids.
 - The exit reason KVM_EXIT_RISCV_SBI for SBI calls forwarded to
   userspace tool.

Signed-off-by: Anup Patel <anup.patel@wdc.com>
---
 Documentation/virt/kvm/api.txt | 158 +++++++++++++++++++++++++++++++--
 1 file changed, 151 insertions(+), 7 deletions(-)

diff --git a/Documentation/virt/kvm/api.txt b/Documentation/virt/kvm/api.txt
index 4833904d32a5..f9ea81fe1143 100644
--- a/Documentation/virt/kvm/api.txt
+++ b/Documentation/virt/kvm/api.txt
@@ -471,7 +471,7 @@ struct kvm_translation {
 4.16 KVM_INTERRUPT
 
 Capability: basic
-Architectures: x86, ppc, mips
+Architectures: x86, ppc, mips, riscv
 Type: vcpu ioctl
 Parameters: struct kvm_interrupt (in)
 Returns: 0 on success, negative on failure.
@@ -531,6 +531,22 @@ interrupt number dequeues the interrupt.
 
 This is an asynchronous vcpu ioctl and can be invoked from any thread.
 
+RISC-V:
+
+Queues an external interrupt to be injected into the virutal CPU. This ioctl
+is overloaded with 2 different irq values:
+
+a) KVM_INTERRUPT_SET
+
+  This sets external interrupt for a virtual CPU and it will receive
+  once it is ready.
+
+b) KVM_INTERRUPT_UNSET
+
+  This clears pending external interrupt for a virtual CPU.
+
+This is an asynchronous vcpu ioctl and can be invoked from any thread.
+
 
 4.17 KVM_DEBUG_GUEST
 
@@ -1219,7 +1235,7 @@ for vm-wide capabilities.
 4.38 KVM_GET_MP_STATE
 
 Capability: KVM_CAP_MP_STATE
-Architectures: x86, s390, arm, arm64
+Architectures: x86, s390, arm, arm64, riscv
 Type: vcpu ioctl
 Parameters: struct kvm_mp_state (out)
 Returns: 0 on success; -1 on error
@@ -1233,7 +1249,8 @@ uniprocessor guests).
 
 Possible values are:
 
- - KVM_MP_STATE_RUNNABLE:        the vcpu is currently running [x86,arm/arm64]
+ - KVM_MP_STATE_RUNNABLE:        the vcpu is currently running
+                                 [x86,arm/arm64,riscv]
  - KVM_MP_STATE_UNINITIALIZED:   the vcpu is an application processor (AP)
                                  which has not yet received an INIT signal [x86]
  - KVM_MP_STATE_INIT_RECEIVED:   the vcpu has received an INIT signal, and is
@@ -1242,7 +1259,7 @@ Possible values are:
                                  is waiting for an interrupt [x86]
  - KVM_MP_STATE_SIPI_RECEIVED:   the vcpu has just received a SIPI (vector
                                  accessible via KVM_GET_VCPU_EVENTS) [x86]
- - KVM_MP_STATE_STOPPED:         the vcpu is stopped [s390,arm/arm64]
+ - KVM_MP_STATE_STOPPED:         the vcpu is stopped [s390,arm/arm64,riscv]
  - KVM_MP_STATE_CHECK_STOP:      the vcpu is in a special error state [s390]
  - KVM_MP_STATE_OPERATING:       the vcpu is operating (running or halted)
                                  [s390]
@@ -1253,7 +1270,7 @@ On x86, this ioctl is only useful after KVM_CREATE_IRQCHIP. Without an
 in-kernel irqchip, the multiprocessing state must be maintained by userspace on
 these architectures.
 
-For arm/arm64:
+For arm/arm64/riscv:
 
 The only states that are valid are KVM_MP_STATE_STOPPED and
 KVM_MP_STATE_RUNNABLE which reflect if the vcpu is paused or not.
@@ -1261,7 +1278,7 @@ KVM_MP_STATE_RUNNABLE which reflect if the vcpu is paused or not.
 4.39 KVM_SET_MP_STATE
 
 Capability: KVM_CAP_MP_STATE
-Architectures: x86, s390, arm, arm64
+Architectures: x86, s390, arm, arm64, riscv
 Type: vcpu ioctl
 Parameters: struct kvm_mp_state (in)
 Returns: 0 on success; -1 on error
@@ -1273,7 +1290,7 @@ On x86, this ioctl is only useful after KVM_CREATE_IRQCHIP. Without an
 in-kernel irqchip, the multiprocessing state must be maintained by userspace on
 these architectures.
 
-For arm/arm64:
+For arm/arm64/riscv:
 
 The only states that are valid are KVM_MP_STATE_STOPPED and
 KVM_MP_STATE_RUNNABLE which reflect if the vcpu should be paused or not.
@@ -2282,6 +2299,116 @@ following id bit patterns:
   0x7020 0000 0003 02 <0:3> <reg:5>
 
 
+RISC-V registers are mapped using the lower 32 bits. The upper 8 bits of
+that is the register group type.
+
+RISC-V config registers are meant for configuring a Guest VCPU and it has
+the following id bit patterns:
+  0x8020 0000 01 <index into the kvm_riscv_config struct:24> (32bit Host)
+  0x8030 0000 01 <index into the kvm_riscv_config struct:24> (64bit Host)
+
+Following are the RISC-V config registers:
+
+    Encoding            Register  Description
+------------------------------------------------------------------
+  0x80x0 0000 0100 0000 isa       ISA feature bitmap of Guest VCPU
+  0x80x0 0000 0100 0001 tbfreq    Time base frequency
+
+The isa config register can be read anytime but can only be written before
+a Guest VCPU runs. It will have ISA feature bits matching underlying host
+set by default. The tbfreq config register is a read-only register and it
+will return host timebase frequenc.
+
+RISC-V core registers represent the general excution state of a Guest VCPU
+and it has the following id bit patterns:
+  0x8020 0000 02 <index into the kvm_riscv_core struct:24> (32bit Host)
+  0x8030 0000 02 <index into the kvm_riscv_core struct:24> (64bit Host)
+
+Following are the RISC-V core registers:
+
+    Encoding            Register  Description
+------------------------------------------------------------------
+  0x80x0 0000 0200 0000 regs.pc   Program counter
+  0x80x0 0000 0200 0001 regs.ra   Return address
+  0x80x0 0000 0200 0002 regs.sp   Stack pointer
+  0x80x0 0000 0200 0003 regs.gp   Global pointer
+  0x80x0 0000 0200 0004 regs.tp   Task pointer
+  0x80x0 0000 0200 0005 regs.t0   Caller saved register 0
+  0x80x0 0000 0200 0006 regs.t1   Caller saved register 1
+  0x80x0 0000 0200 0007 regs.t2   Caller saved register 2
+  0x80x0 0000 0200 0008 regs.s0   Callee saved register 0
+  0x80x0 0000 0200 0009 regs.s1   Callee saved register 1
+  0x80x0 0000 0200 000a regs.a0   Function argument (or return value) 0
+  0x80x0 0000 0200 000b regs.a1   Function argument (or return value) 1
+  0x80x0 0000 0200 000c regs.a2   Function argument 2
+  0x80x0 0000 0200 000d regs.a3   Function argument 3
+  0x80x0 0000 0200 000e regs.a4   Function argument 4
+  0x80x0 0000 0200 000f regs.a5   Function argument 5
+  0x80x0 0000 0200 0010 regs.a6   Function argument 6
+  0x80x0 0000 0200 0011 regs.a7   Function argument 7
+  0x80x0 0000 0200 0012 regs.s2   Callee saved register 2
+  0x80x0 0000 0200 0013 regs.s3   Callee saved register 3
+  0x80x0 0000 0200 0014 regs.s4   Callee saved register 4
+  0x80x0 0000 0200 0015 regs.s5   Callee saved register 5
+  0x80x0 0000 0200 0016 regs.s6   Callee saved register 6
+  0x80x0 0000 0200 0017 regs.s7   Callee saved register 7
+  0x80x0 0000 0200 0018 regs.s8   Callee saved register 8
+  0x80x0 0000 0200 0019 regs.s9   Callee saved register 9
+  0x80x0 0000 0200 001a regs.s10  Callee saved register 10
+  0x80x0 0000 0200 001b regs.s11  Callee saved register 11
+  0x80x0 0000 0200 001c regs.t3   Caller saved register 3
+  0x80x0 0000 0200 001d regs.t4   Caller saved register 4
+  0x80x0 0000 0200 001e regs.t5   Caller saved register 5
+  0x80x0 0000 0200 001f regs.t6   Caller saved register 6
+  0x80x0 0000 0200 0020 mode      Privilege mode (1 = S-mode or 0 = U-mode)
+
+RISC-V csr registers represent the supervisor mode control/status registers
+of a Guest VCPU and it has the following id bit patterns:
+  0x8020 0000 03 <index into the kvm_riscv_csr struct:24> (32bit Host)
+  0x8030 0000 03 <index into the kvm_riscv_csr struct:24> (64bit Host)
+
+Following are the RISC-V csr registers:
+
+    Encoding            Register  Description
+------------------------------------------------------------------
+  0x80x0 0000 0300 0000 sstatus   Supervisor status
+  0x80x0 0000 0300 0001 sie       Supervisor interrupt enable
+  0x80x0 0000 0300 0002 stvec     Supervisor trap vector base
+  0x80x0 0000 0300 0003 sscratch  Supervisor scratch register
+  0x80x0 0000 0300 0004 sepc      Supervisor exception program counter
+  0x80x0 0000 0300 0005 scause    Supervisor trap cause
+  0x80x0 0000 0300 0006 stval     Supervisor bad address or instruction
+  0x80x0 0000 0300 0007 sip       Supervisor interrupt pending
+  0x80x0 0000 0300 0008 satp      Supervisor address translation and protection
+
+RISC-V F extension registers represent the single precision floating point
+state of a Guest VCPU and it has the following id bit patterns:
+  0x8020 0000 04 <index into the __riscv_f_ext_state struct:24>
+
+Following are the RISC-V F extension registers:
+
+    Encoding            Register  Description
+------------------------------------------------------------------
+  0x8020 0000 0400 0000 f[0]      Floating point register 0
+  ...
+  0x8020 0000 0400 001f f[31]     Floating point register 31
+  0x8020 0000 0400 0020 fcsr      Floating point control and status register
+
+RISC-V D extension registers represent the double precision floating point
+state of a Guest VCPU and it has the following id bit patterns:
+  0x8020 0000 05 <index into the __riscv_d_ext_state struct:24> (fcsr)
+  0x8030 0000 05 <index into the __riscv_d_ext_state struct:24> (non-fcsr)
+
+Following are the RISC-V D extension registers:
+
+    Encoding            Register  Description
+------------------------------------------------------------------
+  0x8030 0000 0500 0000 f[0]      Floating point register 0
+  ...
+  0x8030 0000 0500 001f f[31]     Floating point register 31
+  0x8020 0000 0500 0020 fcsr      Floating point control and status register
+
+
 4.69 KVM_GET_ONE_REG
 
 Capability: KVM_CAP_ONE_REG
@@ -4468,6 +4595,23 @@ Hyper-V SynIC state change. Notification is used to remap SynIC
 event/message pages and to enable/disable SynIC messages/events processing
 in userspace.
 
+		/* KVM_EXIT_RISCV_SBI */
+		struct {
+			unsigned long extension_id;
+			unsigned long function_id;
+			unsigned long args[6];
+			unsigned long ret[2];
+		} riscv_sbi;
+If exit reason is KVM_EXIT_RISCV_SBI then it indicates that the VCPU has
+done a SBI call which is not handled by KVM RISC-V kernel module. The details
+of the SBI call are available in 'riscv_sbi' member of kvm_run stucture. The
+'extension_id' field of 'riscv_sbi' represents SBI extension ID whereas the
+'function_id' field represents function ID of given SBI extension. The 'args'
+array field of 'riscv_sbi' represents parameters for the SBI call and 'ret'
+array field represents return values. The userspace should update the return
+values of SBI call before resuming the VCPU. For more details on RISC-V SBI
+spec refer, https://github.com/riscv/riscv-sbi-doc.
+
 		/* Fix the size of the union. */
 		char padding[256];
 	};
-- 
2.17.1


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
