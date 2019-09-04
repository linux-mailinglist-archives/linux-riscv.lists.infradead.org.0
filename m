Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 45362A867F
	for <lists+linux-riscv@lfdr.de>; Wed,  4 Sep 2019 18:16:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=k7tLxhfDxMBoJpunyEnbyso8pAfpGRxdLq2ETo1o4E8=; b=ADH+gRox8knYT1
	djYKfyNBhe6nEKowp4ZRe3WeqMav5VOYtUovZnmq34T7sEszabdo5ge8Ra6yCC/yEduVGE63upR5a
	VI4MC5bapApcK/tPJAKVCMiaICYsa0lY/fjjlO6pby72YZJW+3dOeiEoJQiitAXYftnmRaDMhZ6IL
	IDphKrLqaxrsX9nQMJWml5TFRgSs+W8lHtxnRUGLaJ8zLOa8mEp82K3XOVWNMCq7aJ2mQp7cG4Dg7
	dUgCvAxOw3LYp9/BBCFbz3dwqGcE7FIFP95wAWfX7ELwtbpXqL0Cc2798ECNXGw9H1fGPH2DO01p8
	uiQk3lZKFex82LjbLK3w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5XxE-0003ve-3U; Wed, 04 Sep 2019 16:16:20 +0000
Received: from esa2.hgst.iphmx.com ([68.232.143.124])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5Xx6-0003oE-EZ
 for linux-riscv@lists.infradead.org; Wed, 04 Sep 2019 16:16:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1567613786; x=1599149786;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=aaWW5qSfMYAwa8+f4dCnQowxtQ6uwTHCDry/rCCMQOQ=;
 b=AyyOsHzSYoiLcAe1BTJ53TkwZDSoIoZsCsMOFispySRTxls8ZRT49oW8
 C0Weudvktb0LFOubeEzGXm2RvaQxcwQAWF/ZItaKDsaWts5KHPr8A6ell
 Op3XQg4akT3E/UvhjwYq5XfkLmX5Gmq7+Z8B/F6fsOir3v5LNia0XWgDl
 TQXJJS7ErlCKRvgQokwco2ORquVHXcpVA7KocFzav2t+7wDK4k7/6KLXK
 FApC+WLak3ic1H0MvO4QJ4fqYg39xr/rXKyDyvQmtQSiqsPM5qiBz8GqX
 gp/6Vy2Ny2pMVksbWc2DkkmKVGxCJXo8QS0k+rRXaj1T1RXxkgEFwOJ3Y g==;
IronPort-SDR: SiYPSaD6qLMGkuYdEk4RAa52NrLQacCKnbqbb0HsJhqTv/DG6RkhisxW8QXE0YKGprwZhvdHt9
 r0WmWBjdif+9AneSBInxVZstrb1eVSPk+JdvTtypKs8uPF/Zwrnk+4f8x96ZveQti2L/BlyM0w
 EjAuBHcqxQk2f+ko8pTEVa/FYxui08cFJVKTYKhQdRahpb2/trGiAGIaJBi3iiXHEKywDAotOj
 E1NwsqM9BaHeCGSS3HVd+6USOK5tfJyEo/Xy5M1LxFVw7YGO7cGlJu3uuvCZ0BOHLD0p+XURz1
 k5Q=
X-IronPort-AV: E=Sophos;i="5.64,467,1559491200"; d="scan'208";a="218010654"
Received: from mail-sn1nam01lp2053.outbound.protection.outlook.com (HELO
 NAM01-SN1-obe.outbound.protection.outlook.com) ([104.47.32.53])
 by ob1.hgst.iphmx.com with ESMTP; 05 Sep 2019 00:16:24 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=YcBWimA9d7R3H1Y9uEvwIfe/pqxeW7QC7SQv8lisFEBreXbDVKPm0p1U7EOv+PcexxwzRBa6xCpTpMoyj4dO59vQmaMAd0O0iOsgkPcCvLDgs/bJ626EBKUBfjPKqDCGGkccFpnqugA0qt9HY2pydCMXu5A9yITtrp9uG6LjLvW/67VqNPUL+tVUeIgKmW2zoOH9sc7kdIs6HTAJCMBW3n4LEn1hc47yUu+JmsCQAhLUMtaNxiIFHNVWgaf8lIgLrKXHKRDxOOWVh2kzRm2+5XBtjpAx8sdlY9LjMgLcvzQrBaZOg3kolevp6weJ38UnmyRPA6W58KoZDoPWGw4iig==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ZCM0a7od6rnccAGutDdlvvxgZeCj4vCwRW4UjpfHYeA=;
 b=C0AKUfKNfIjJa/OXdYK5rstf3Da7qUKm7vYXL7TE6yIxFzSMLKWmMtyj+Ahn3BIvs4z5oUoQgBOqenkpVXVIub3kUI9kXRvwpgKUy35a1FuJ/C8zta5XLlxnhIsolO2/ZiLyNc4jWjrWNZZvWxCEX2+pKpOFKY2u53RryaqcPP/aXwjzTYtpLx99IsxSAALR6ivAyozMVKH4rbX04d8XqhMmX8mK4XQ7R0xJetaWeW5T4n0H4xGEDfNah3txIo696rMqrEI1Ek/Nh8MlVy0g8dXf3194SL+Gw1xcmXIndUqBUSXH5TyapBBFg8vZnPOeA4yIWgYMCJoQIdXmarvXzQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wdc.com; dmarc=pass action=none header.from=wdc.com; dkim=pass
 header.d=wdc.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ZCM0a7od6rnccAGutDdlvvxgZeCj4vCwRW4UjpfHYeA=;
 b=ODU/Z72AOeMXIp0871s6ZAs33Suglk3vBphdUJSdCs5jq5IOMBiJ5SlJXpupWEHgXXrVINYg/t6RQenxjPGc9iS/j0ffJm4CzLT1QG6K3oaP2zGQm6Ut8ToSU+HWfPMCCkHuuH6nSA7tnN9m8iQpk4U7wDNaNkPH0NJ1wWFbUrY=
Received: from MN2PR04MB6061.namprd04.prod.outlook.com (20.178.246.15) by
 MN2PR04MB5504.namprd04.prod.outlook.com (20.178.247.210) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2178.16; Wed, 4 Sep 2019 16:16:09 +0000
Received: from MN2PR04MB6061.namprd04.prod.outlook.com
 ([fe80::e1a5:8de2:c3b1:3fb0]) by MN2PR04MB6061.namprd04.prod.outlook.com
 ([fe80::e1a5:8de2:c3b1:3fb0%7]) with mapi id 15.20.2220.022; Wed, 4 Sep 2019
 16:16:09 +0000
From: Anup Patel <Anup.Patel@wdc.com>
To: Palmer Dabbelt <palmer@sifive.com>, Paul Walmsley
 <paul.walmsley@sifive.com>, Paolo Bonzini <pbonzini@redhat.com>, Radim K
 <rkrcmar@redhat.com>
Subject: [PATCH v7 19/21] RISC-V: KVM: Document RISC-V specific parts of KVM
 API.
Thread-Topic: [PATCH v7 19/21] RISC-V: KVM: Document RISC-V specific parts of
 KVM API.
Thread-Index: AQHVYzwQr8pVLk2B5kintdp4KtZzbA==
Date: Wed, 4 Sep 2019 16:16:09 +0000
Message-ID: <20190904161245.111924-21-anup.patel@wdc.com>
References: <20190904161245.111924-1-anup.patel@wdc.com>
In-Reply-To: <20190904161245.111924-1-anup.patel@wdc.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: MA1PR01CA0084.INDPRD01.PROD.OUTLOOK.COM (2603:1096:a00::24)
 To MN2PR04MB6061.namprd04.prod.outlook.com
 (2603:10b6:208:d8::15)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Anup.Patel@wdc.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-mailer: git-send-email 2.17.1
x-originating-ip: [49.207.53.222]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: b1386603-df12-41f3-6cab-08d731533279
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(7168020)(4627221)(201703031133081)(201702281549075)(8990200)(5600166)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:MN2PR04MB5504; 
x-ms-traffictypediagnostic: MN2PR04MB5504:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MN2PR04MB55048E7A34FDE1AEBB5B8F708DB80@MN2PR04MB5504.namprd04.prod.outlook.com>
wdcipoutbound: EOP-TRUE
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 0150F3F97D
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(376002)(136003)(396003)(346002)(366004)(39860400002)(199004)(189003)(66556008)(66446008)(7416002)(7736002)(8676002)(478600001)(25786009)(386003)(66946007)(99286004)(256004)(14444005)(50226002)(14454004)(66476007)(64756008)(6506007)(6512007)(102836004)(6436002)(8936002)(54906003)(6116002)(3846002)(486006)(26005)(55236004)(86362001)(1076003)(53936002)(476003)(316002)(71200400001)(71190400001)(81156014)(76176011)(52116002)(305945005)(5660300002)(6486002)(36756003)(186003)(11346002)(2616005)(66066001)(44832011)(4326008)(2906002)(446003)(81166006)(110136005);
 DIR:OUT; SFP:1102; SCL:1; SRVR:MN2PR04MB5504;
 H:MN2PR04MB6061.namprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: GEDPr84U5QmMy2DWkfeKoy14aNRR2kTz4WG4GgktMhU97DX+AoLfP/krI1nrnP2ujVeIBtOnrqbqhYbWM3h+7/4iS4cc5e+CVSE2mIMrrn1+9gURDV4O+d9F7xiRQyGoyRIHklIaF/Hy0aNyrukckGhQSz1vo+e7WzcxeGxYHFe4DuWDwblGF2sDo/AXhTiYkClATli4JuK3CjAJVgEpPrTdj63YeDWZW1M2Bd/GjG8BVN7l/4C6AS59vPK06VvBFRG8webvlzVlCwuGAqblfXravi8qR6eLF2Xxc2+jMRBur3TMMu+LJfEsVEN5mMUluXDJZUcQAzcbeDwPBDUCBUEKf7+sc0HBUIzBaENyXzTiZ+dMbGTjzVu38bIz5/axtP7X4Scl/UMbmbIAyA7h07kYjWiCA9n2W0t2l8tX/2g=
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b1386603-df12-41f3-6cab-08d731533279
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Sep 2019 16:16:09.6508 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 8iIHaho9rGbbt1s9HBI+9ivUUbaLoT/aDgeLNvKxstlFBmpWlfXqY2/gEVJf4IUNMUIIa7I7XuCEcOxYwkBSoQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR04MB5504
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190904_091612_581650_DF570245 
X-CRM114-Status: GOOD (  16.26  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.143.124 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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

Signed-off-by: Anup Patel <anup.patel@wdc.com>
---
 Documentation/virt/kvm/api.txt | 141 +++++++++++++++++++++++++++++++--
 1 file changed, 134 insertions(+), 7 deletions(-)

diff --git a/Documentation/virt/kvm/api.txt b/Documentation/virt/kvm/api.txt
index 2d067767b617..065c664b0d48 100644
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
 
@@ -1206,7 +1222,7 @@ for vm-wide capabilities.
 4.38 KVM_GET_MP_STATE
 
 Capability: KVM_CAP_MP_STATE
-Architectures: x86, s390, arm, arm64
+Architectures: x86, s390, arm, arm64, riscv
 Type: vcpu ioctl
 Parameters: struct kvm_mp_state (out)
 Returns: 0 on success; -1 on error
@@ -1220,7 +1236,8 @@ uniprocessor guests).
 
 Possible values are:
 
- - KVM_MP_STATE_RUNNABLE:        the vcpu is currently running [x86,arm/arm64]
+ - KVM_MP_STATE_RUNNABLE:        the vcpu is currently running
+                                 [x86,arm/arm64,riscv]
  - KVM_MP_STATE_UNINITIALIZED:   the vcpu is an application processor (AP)
                                  which has not yet received an INIT signal [x86]
  - KVM_MP_STATE_INIT_RECEIVED:   the vcpu has received an INIT signal, and is
@@ -1229,7 +1246,7 @@ Possible values are:
                                  is waiting for an interrupt [x86]
  - KVM_MP_STATE_SIPI_RECEIVED:   the vcpu has just received a SIPI (vector
                                  accessible via KVM_GET_VCPU_EVENTS) [x86]
- - KVM_MP_STATE_STOPPED:         the vcpu is stopped [s390,arm/arm64]
+ - KVM_MP_STATE_STOPPED:         the vcpu is stopped [s390,arm/arm64,riscv]
  - KVM_MP_STATE_CHECK_STOP:      the vcpu is in a special error state [s390]
  - KVM_MP_STATE_OPERATING:       the vcpu is operating (running or halted)
                                  [s390]
@@ -1240,7 +1257,7 @@ On x86, this ioctl is only useful after KVM_CREATE_IRQCHIP. Without an
 in-kernel irqchip, the multiprocessing state must be maintained by userspace on
 these architectures.
 
-For arm/arm64:
+For arm/arm64/riscv:
 
 The only states that are valid are KVM_MP_STATE_STOPPED and
 KVM_MP_STATE_RUNNABLE which reflect if the vcpu is paused or not.
@@ -1248,7 +1265,7 @@ KVM_MP_STATE_RUNNABLE which reflect if the vcpu is paused or not.
 4.39 KVM_SET_MP_STATE
 
 Capability: KVM_CAP_MP_STATE
-Architectures: x86, s390, arm, arm64
+Architectures: x86, s390, arm, arm64, riscv
 Type: vcpu ioctl
 Parameters: struct kvm_mp_state (in)
 Returns: 0 on success; -1 on error
@@ -1260,7 +1277,7 @@ On x86, this ioctl is only useful after KVM_CREATE_IRQCHIP. Without an
 in-kernel irqchip, the multiprocessing state must be maintained by userspace on
 these architectures.
 
-For arm/arm64:
+For arm/arm64/riscv:
 
 The only states that are valid are KVM_MP_STATE_STOPPED and
 KVM_MP_STATE_RUNNABLE which reflect if the vcpu should be paused or not.
@@ -2269,6 +2286,116 @@ following id bit patterns:
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
+  0x8020 0000 02 <index into the kvm_regs struct:24> (32bit Host)
+  0x8030 0000 02 <index into the kvm_regs struct:24> (64bit Host)
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
+  0x8020 0000 03 <index into the kvm_sregs struct:24> (32bit Host)
+  0x8030 0000 03 <index into the kvm_sregs struct:24> (64bit Host)
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
-- 
2.17.1


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
