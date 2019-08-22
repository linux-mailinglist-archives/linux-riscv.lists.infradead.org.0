Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 37FAF98E17
	for <lists+linux-riscv@lfdr.de>; Thu, 22 Aug 2019 10:44:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=O3PCLpFi5uXox/KSvYnjs5TBg3P5NevbOL6tZu5NNjU=; b=qw69Mzl3s0lSwr
	uzVFHSV9ezWGQieGBWh1J6mYIyinQXJUg0BgdYXAhVY+GtWBu3vYiWD1bHnNGH3Ox52qSX0QLuro9
	f3mPsnMcqVjskSqQyWdYITfHJcwhtUxqImkukK6thHvuM3hF/jFJfcGQJPJLaASoW8alDGKjf1Fku
	OlkWRUJwbZnLDKkGfUSX6TKetkjNdzK3328ZIpylCVDSlHkSWGwJNyYkzKNFN2of+YGGDpa27Gxts
	HjHfBs07ZssTB57YUMGH5QboZH+kiePdsCAeMoBwnkdUM+M49kgJWBc2wbdS0zlllRWaCkjBEBxWP
	WVi0mHefnWInNtkfFM8Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0ihX-0006EP-GS; Thu, 22 Aug 2019 08:44:11 +0000
Received: from esa2.hgst.iphmx.com ([68.232.143.124])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0ihT-0006E2-2u
 for linux-riscv@lists.infradead.org; Thu, 22 Aug 2019 08:44:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1566463466; x=1597999466;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=p2dKbqZr9Eshw/spiGxU6tsWYR4vxOJfsvC4E9FPQ4Q=;
 b=So3uzTMc8/3tCaqSOcYHlnZ+l+npcruWbYFmkGFl7w8K26oYWwcC7WsR
 FPq4UqnSZyi32Os8XrPZ7Iy9yT5Q4tMaQRToVYd04bGiFD+C8oHKX/CqN
 lQKnIFgc+orX0WvpCI8rPt0EFmi+I1OwRrQnCdHK+QP/C38txDbVLnBIp
 bHj3ogATqpfTWV1YUycEwN20HWHJf/IQmFMcV/gjC0vGkNAi64/LiIVS7
 dPskXQ0q/uIlIukSSuMcIuRsqv69mI/DpdbTN8Lf+fy2zudMxZBGUGDwN
 RzMTSXkBEyB/8QxEE/OWykoC79WoesS+HQ/+YWZDMr6A9Aoh6K8HAiHq0 g==;
IronPort-SDR: ARDeo96aPgvMcRNcJMMa+8nxpo91uKaK6H5bIyKQ6+yhaZezyIm/rmwyGILGJlIgvstUjFqFyi
 /g4V7fWVMiNML6wL5TKmdIiRLtHkn6GH4QUeMgLKaKvuXF/TiQ68x7oFdIhH8SI4jI4+MNVL5N
 E7kqFxbVBJnFeLGl4yPM0VKknf/BvbfpRpuL0snlMtFKFqkKdrOBu2+rjbYqDVDVJthtB3LlS7
 tGgX2h8Fwx4Wc7K7tew3noinSJ8KXxNPoUWXc+87y3UogQrI3cnSoCi2oJheWQROGbbdPo8G4U
 RUQ=
X-IronPort-AV: E=Sophos;i="5.64,416,1559491200"; d="scan'208";a="216834823"
Received: from mail-co1nam04lp2059.outbound.protection.outlook.com (HELO
 NAM04-CO1-obe.outbound.protection.outlook.com) ([104.47.45.59])
 by ob1.hgst.iphmx.com with ESMTP; 22 Aug 2019 16:44:22 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=DvG66remaPNHMr4DPRNCS9BYSZtKWafEtHZPMHArCSX2JFkFNDKCdv/jHW+/3ld1iUeA1RAtHKNaMzmndzPw+XNmSWXz5W2X8aMXKn4XMYOS1YpNGiNdv8Nj4/CyO9aWspWYJ4IxeClgnaBird13Wjfb0zmGL5kGqjgkzSj6Z5TgpicBkBNjVLK99j7zyqWMTs3YfptipfKUk/Ym/2CrRa1vDkKwZcx6C1v6yUcBsyZOvOhp87LeHEFioImHXfiK0jKH3t06FLEYox3u0Pali+i3of8i0kEL/kdiEUGmkJoHmKIwxdNz8gZ2rRZMh6KBULPFIImnXtireL8u4voUIA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=/W8fjYhNaKV8Fvof/catS21OoPns54P3XxeXT4H8D3U=;
 b=BaIx1lFh7tdSpenJPSnpBftUBwmc9QnVS5IN8SgDnxZixBHMNgyJg9QkTQXEQVReC+mCx0tWaN6itNU7WSsw5Rnt+2P1ftIES+fCw5h9bx9AKpqZKcIAhLVQ4mvOb9wifcD5lRfNmXWbycKtoHATS02SglHovh3qiHU+Pb0E/Hxt9M3xbIfdAbAdotOE/e4lEKUhqkX0QbBPCgyHyx4DNd3jInohhqpryVT02Y6+X87k64zpBOzglgvdA3MZPX1eIm09tRne+pjOOSDuokXSmNBQmfyaPiMXLODn1ugRkdg4Aazp2sZlyF4JbiaNPAiAqTdf0DfQyrALXeLL3asoqQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wdc.com; dmarc=pass action=none header.from=wdc.com; dkim=pass
 header.d=wdc.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=/W8fjYhNaKV8Fvof/catS21OoPns54P3XxeXT4H8D3U=;
 b=B2osm42EWZMqXIhdKPszxJiQr6tBMU9V1wiTuNGuU0G8y3gR4snLqJf1siWVWOJ5t2G1HHFwfRw5GWjzWTikDVtvgT7cHl7PiteRLyhES0Ax1uwfMbTKOIITuyy50ful7hm9OIg2D0ryiMxVuNrei8jVKj3e1PSdWEwAuKREyV8=
Received: from MN2PR04MB6061.namprd04.prod.outlook.com (20.178.246.15) by
 MN2PR04MB7071.namprd04.prod.outlook.com (10.186.146.19) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2178.16; Thu, 22 Aug 2019 08:44:02 +0000
Received: from MN2PR04MB6061.namprd04.prod.outlook.com
 ([fe80::a815:e61a:b4aa:60c8]) by MN2PR04MB6061.namprd04.prod.outlook.com
 ([fe80::a815:e61a:b4aa:60c8%7]) with mapi id 15.20.2178.018; Thu, 22 Aug 2019
 08:44:02 +0000
From: Anup Patel <Anup.Patel@wdc.com>
To: Palmer Dabbelt <palmer@sifive.com>, Paul Walmsley
 <paul.walmsley@sifive.com>, Paolo Bonzini <pbonzini@redhat.com>, Radim K
 <rkrcmar@redhat.com>
Subject: [PATCH v5 07/20] RISC-V: KVM: Implement VCPU interrupts and requests
 handling
Thread-Topic: [PATCH v5 07/20] RISC-V: KVM: Implement VCPU interrupts and
 requests handling
Thread-Index: AQHVWMW/1SQiSzRzeU2RBOW5QJ6KYQ==
Date: Thu, 22 Aug 2019 08:44:02 +0000
Message-ID: <20190822084131.114764-8-anup.patel@wdc.com>
References: <20190822084131.114764-1-anup.patel@wdc.com>
In-Reply-To: <20190822084131.114764-1-anup.patel@wdc.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: MA1PR01CA0118.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a00:1::34) To MN2PR04MB6061.namprd04.prod.outlook.com
 (2603:10b6:208:d8::15)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Anup.Patel@wdc.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-mailer: git-send-email 2.17.1
x-originating-ip: [199.255.44.175]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 22886662-ba5f-45ac-6d23-08d726dce1c7
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(5600166)(711020)(4605104)(1401327)(4618075)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(2017052603328)(7193020);
 SRVR:MN2PR04MB7071; 
x-ms-traffictypediagnostic: MN2PR04MB7071:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MN2PR04MB707115B67CEB480CDE240DA18DA50@MN2PR04MB7071.namprd04.prod.outlook.com>
wdcipoutbound: EOP-TRUE
x-ms-oob-tlc-oobclassifiers: OLM:3044;
x-forefront-prvs: 01371B902F
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(396003)(346002)(366004)(376002)(136003)(39860400002)(199004)(189003)(1076003)(5660300002)(7416002)(14454004)(14444005)(30864003)(86362001)(478600001)(36756003)(71190400001)(256004)(6116002)(76176011)(4326008)(66066001)(71200400001)(305945005)(7736002)(3846002)(52116002)(99286004)(50226002)(8936002)(8676002)(26005)(81166006)(446003)(11346002)(44832011)(6506007)(486006)(6512007)(186003)(316002)(386003)(476003)(102836004)(2616005)(81156014)(66556008)(66946007)(2906002)(25786009)(53936002)(6486002)(6436002)(66446008)(64756008)(66476007)(110136005)(54906003);
 DIR:OUT; SFP:1102; SCL:1; SRVR:MN2PR04MB7071;
 H:MN2PR04MB6061.namprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: 4ta6qJORyJ82JEXsc4iaz1lkeHZh1S1CPnsqkDfEMG9EsztbBg+DEC2+PMe5vVp43uThNSkR/yz+NRn2JuGC/gracyVXi9mR/d90w2Wx7/R4acYH96CAsh2KY6BXwSpHNnylqGSlR43ih9OmfnHS5ew9JtM8pSa5fcYgemYMvVl+R0YTz//u5X1U6wEG2EqKwcWVZmiTvw+Clyb6Svl9mu0NvmAsSXTvUt/rVKeHmLFX4bGddOcK9Gt7ctmlv0OF5xuOaP7WOZWjBREK4fPilpZ50OPxfKfRRwOcRJk8PrC/J4DPAei4nntPK1HPJxVD2NRIaFQ6C2eiFr8PIIIDtOBL/+Cr0Ei/mIIyLMqMKWQow1B174R5/AvliKQ0ugtwIi8xMIpix0jTM6duW1VZG4nubLcJVkfHaHao/P0hGhM=
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 22886662-ba5f-45ac-6d23-08d726dce1c7
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 Aug 2019 08:44:02.6723 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: yjIPpJ/pj99MRTPgArEpiqwxqexAVq6TgNr3czvz+q5suG1KKZmmmGL65AYlYcRcWkNiaghziAfcodCSU+AaOQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR04MB7071
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190822_014407_185322_D52B150A 
X-CRM114-Status: GOOD (  21.18  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.143.124 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Damien Le Moal <Damien.LeMoal@wdc.com>, Anup Patel <Anup.Patel@wdc.com>,
 "kvm@vger.kernel.org" <kvm@vger.kernel.org>, Anup Patel <anup@brainfault.org>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Christoph Hellwig <hch@infradead.org>, Atish Patra <Atish.Patra@wdc.com>,
 Alistair Francis <Alistair.Francis@wdc.com>,
 Thomas Gleixner <tglx@linutronix.de>,
 "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

This patch implements VCPU interrupts and requests which are both
asynchronous events.

The VCPU interrupts can be set/unset using KVM_INTERRUPT ioctl from
user-space. In future, the in-kernel IRQCHIP emulation will use
kvm_riscv_vcpu_set_interrupt() and kvm_riscv_vcpu_unset_interrupt()
functions to set/unset VCPU interrupts.

Important VCPU requests implemented by this patch are:
KVM_REQ_SLEEP       - set whenever VCPU itself goes to sleep state
KVM_REQ_VCPU_RESET  - set whenever VCPU reset is requested

The WFI trap-n-emulate (added later) will use KVM_REQ_SLEEP request
and kvm_riscv_vcpu_has_interrupt() function.

The KVM_REQ_VCPU_RESET request will be used by SBI emulation (added
later) to power-up a VCPU in power-off state. The user-space can use
the GET_MPSTATE/SET_MPSTATE ioctls to get/set power state of a VCPU.

Signed-off-by: Anup Patel <anup.patel@wdc.com>
Acked-by: Paolo Bonzini <pbonzini@redhat.com>
Reviewed-by: Paolo Bonzini <pbonzini@redhat.com>
---
 arch/riscv/include/asm/kvm_host.h |  26 +++++
 arch/riscv/include/uapi/asm/kvm.h |   3 +
 arch/riscv/kvm/main.c             |   8 ++
 arch/riscv/kvm/vcpu.c             | 184 +++++++++++++++++++++++++++---
 4 files changed, 208 insertions(+), 13 deletions(-)

diff --git a/arch/riscv/include/asm/kvm_host.h b/arch/riscv/include/asm/kvm_host.h
index dab32c9c3470..d801216da6d0 100644
--- a/arch/riscv/include/asm/kvm_host.h
+++ b/arch/riscv/include/asm/kvm_host.h
@@ -122,6 +122,21 @@ struct kvm_vcpu_arch {
 	/* CPU CSR context upon Guest VCPU reset */
 	struct kvm_vcpu_csr guest_reset_csr;
 
+	/*
+	 * VCPU interrupts
+	 *
+	 * We have a lockless approach for tracking pending VCPU interrupts
+	 * implemented using atomic bitops. The irqs_pending bitmap represent
+	 * pending interrupts whereas irqs_pending_mask represent bits changed
+	 * in irqs_pending. Our approach is modeled around multiple producer
+	 * and single consumer problem where the consumer is the VCPU itself.
+	 */
+	unsigned long irqs_pending;
+	unsigned long irqs_pending_mask;
+
+	/* VCPU power-off state */
+	bool power_off;
+
 	/* Don't run the VCPU (blocked) */
 	bool pause;
 
@@ -135,6 +150,9 @@ static inline void kvm_arch_vcpu_uninit(struct kvm_vcpu *vcpu) {}
 static inline void kvm_arch_sched_in(struct kvm_vcpu *vcpu, int cpu) {}
 static inline void kvm_arch_vcpu_block_finish(struct kvm_vcpu *vcpu) {}
 
+int kvm_riscv_setup_vsip(void);
+void kvm_riscv_cleanup_vsip(void);
+
 void kvm_riscv_stage2_flush_cache(struct kvm_vcpu *vcpu);
 int kvm_riscv_stage2_alloc_pgd(struct kvm *kvm);
 void kvm_riscv_stage2_free_pgd(struct kvm *kvm);
@@ -146,4 +164,12 @@ int kvm_riscv_vcpu_exit(struct kvm_vcpu *vcpu, struct kvm_run *run,
 
 static inline void __kvm_riscv_switch_to(struct kvm_vcpu_arch *vcpu_arch) {}
 
+int kvm_riscv_vcpu_set_interrupt(struct kvm_vcpu *vcpu, unsigned int irq);
+int kvm_riscv_vcpu_unset_interrupt(struct kvm_vcpu *vcpu, unsigned int irq);
+void kvm_riscv_vcpu_flush_interrupts(struct kvm_vcpu *vcpu);
+void kvm_riscv_vcpu_sync_interrupts(struct kvm_vcpu *vcpu);
+bool kvm_riscv_vcpu_has_interrupt(struct kvm_vcpu *vcpu);
+void kvm_riscv_vcpu_power_off(struct kvm_vcpu *vcpu);
+void kvm_riscv_vcpu_power_on(struct kvm_vcpu *vcpu);
+
 #endif /* __RISCV_KVM_HOST_H__ */
diff --git a/arch/riscv/include/uapi/asm/kvm.h b/arch/riscv/include/uapi/asm/kvm.h
index d15875818b6e..6dbc056d58ba 100644
--- a/arch/riscv/include/uapi/asm/kvm.h
+++ b/arch/riscv/include/uapi/asm/kvm.h
@@ -18,6 +18,9 @@
 
 #define KVM_COALESCED_MMIO_PAGE_OFFSET 1
 
+#define KVM_INTERRUPT_SET	-1U
+#define KVM_INTERRUPT_UNSET	-2U
+
 /* for KVM_GET_REGS and KVM_SET_REGS */
 struct kvm_regs {
 };
diff --git a/arch/riscv/kvm/main.c b/arch/riscv/kvm/main.c
index e1ffe6d42f39..d088247843c5 100644
--- a/arch/riscv/kvm/main.c
+++ b/arch/riscv/kvm/main.c
@@ -48,6 +48,8 @@ int kvm_arch_hardware_enable(void)
 	hideleg |= SIE_SEIE;
 	csr_write(CSR_HIDELEG, hideleg);
 
+	csr_write(CSR_VSIP, 0);
+
 	return 0;
 }
 
@@ -59,11 +61,17 @@ void kvm_arch_hardware_disable(void)
 
 int kvm_arch_init(void *opaque)
 {
+	int ret;
+
 	if (!riscv_isa_extension_available(NULL, h)) {
 		kvm_info("hypervisor extension not available\n");
 		return -ENODEV;
 	}
 
+	ret = kvm_riscv_setup_vsip();
+	if (ret)
+		return ret;
+
 	kvm_info("hypervisor extension available\n");
 
 	return 0;
diff --git a/arch/riscv/kvm/vcpu.c b/arch/riscv/kvm/vcpu.c
index 8272b05d6ce4..7f59e85c6af8 100644
--- a/arch/riscv/kvm/vcpu.c
+++ b/arch/riscv/kvm/vcpu.c
@@ -11,6 +11,7 @@
 #include <linux/err.h>
 #include <linux/kdebug.h>
 #include <linux/module.h>
+#include <linux/percpu.h>
 #include <linux/uaccess.h>
 #include <linux/vmalloc.h>
 #include <linux/sched/signal.h>
@@ -40,6 +41,8 @@ struct kvm_stats_debugfs_item debugfs_entries[] = {
 				 riscv_isa_extension_mask(s) | \
 				 riscv_isa_extension_mask(u))
 
+static unsigned long __percpu *vsip_shadow;
+
 static void kvm_riscv_reset_vcpu(struct kvm_vcpu *vcpu)
 {
 	struct kvm_vcpu_csr *csr = &vcpu->arch.guest_csr;
@@ -50,6 +53,9 @@ static void kvm_riscv_reset_vcpu(struct kvm_vcpu *vcpu)
 	memcpy(csr, reset_csr, sizeof(*csr));
 
 	memcpy(cntx, reset_cntx, sizeof(*cntx));
+
+	WRITE_ONCE(vcpu->arch.irqs_pending, 0);
+	WRITE_ONCE(vcpu->arch.irqs_pending_mask, 0);
 }
 
 struct kvm_vcpu *kvm_arch_vcpu_create(struct kvm *kvm, unsigned int id)
@@ -116,8 +122,7 @@ void kvm_arch_vcpu_destroy(struct kvm_vcpu *vcpu)
 
 int kvm_cpu_has_pending_timer(struct kvm_vcpu *vcpu)
 {
-	/* TODO: */
-	return 0;
+	return READ_ONCE(vcpu->arch.irqs_pending) & (1UL << IRQ_S_TIMER);
 }
 
 void kvm_arch_vcpu_blocking(struct kvm_vcpu *vcpu)
@@ -130,20 +135,18 @@ void kvm_arch_vcpu_unblocking(struct kvm_vcpu *vcpu)
 
 int kvm_arch_vcpu_runnable(struct kvm_vcpu *vcpu)
 {
-	/* TODO: */
-	return 0;
+	return (kvm_riscv_vcpu_has_interrupt(vcpu) &&
+		!vcpu->arch.power_off && !vcpu->arch.pause);
 }
 
 int kvm_arch_vcpu_should_kick(struct kvm_vcpu *vcpu)
 {
-	/* TODO: */
-	return 0;
+	return kvm_vcpu_exiting_guest_mode(vcpu) == IN_GUEST_MODE;
 }
 
 bool kvm_arch_vcpu_in_kernel(struct kvm_vcpu *vcpu)
 {
-	/* TODO: */
-	return false;
+	return (vcpu->arch.guest_context.sstatus & SR_SPP) ? true : false;
 }
 
 bool kvm_arch_has_vcpu_debugfs(void)
@@ -164,7 +167,21 @@ vm_fault_t kvm_arch_vcpu_fault(struct kvm_vcpu *vcpu, struct vm_fault *vmf)
 long kvm_arch_vcpu_async_ioctl(struct file *filp,
 			       unsigned int ioctl, unsigned long arg)
 {
-	/* TODO; */
+	struct kvm_vcpu *vcpu = filp->private_data;
+	void __user *argp = (void __user *)arg;
+
+	if (ioctl == KVM_INTERRUPT) {
+		struct kvm_interrupt irq;
+
+		if (copy_from_user(&irq, argp, sizeof(irq)))
+			return -EFAULT;
+
+		if (irq.irq == KVM_INTERRUPT_SET)
+			return kvm_riscv_vcpu_set_interrupt(vcpu, IRQ_S_EXT);
+		else
+			return kvm_riscv_vcpu_unset_interrupt(vcpu, IRQ_S_EXT);
+	}
+
 	return -ENOIOCTLCMD;
 }
 
@@ -213,18 +230,103 @@ int kvm_arch_vcpu_ioctl_set_regs(struct kvm_vcpu *vcpu, struct kvm_regs *regs)
 	return -EINVAL;
 }
 
+void kvm_riscv_vcpu_flush_interrupts(struct kvm_vcpu *vcpu)
+{
+	struct kvm_vcpu_csr *csr = &vcpu->arch.guest_csr;
+	unsigned long mask, val;
+
+	if (READ_ONCE(vcpu->arch.irqs_pending_mask)) {
+		mask = xchg_acquire(&vcpu->arch.irqs_pending_mask, 0);
+		val = READ_ONCE(vcpu->arch.irqs_pending) & mask;
+
+		csr->vsip &= ~mask;
+		csr->vsip |= val;
+	}
+}
+
+void kvm_riscv_vcpu_sync_interrupts(struct kvm_vcpu *vcpu)
+{
+	vcpu->arch.guest_csr.vsip = csr_read(CSR_VSIP);
+	vcpu->arch.guest_csr.vsie = csr_read(CSR_VSIE);
+}
+
+int kvm_riscv_vcpu_set_interrupt(struct kvm_vcpu *vcpu, unsigned int irq)
+{
+	if (irq != IRQ_S_SOFT &&
+	    irq != IRQ_S_TIMER &&
+	    irq != IRQ_S_EXT)
+		return -EINVAL;
+
+	set_bit(irq, &vcpu->arch.irqs_pending);
+	smp_mb__before_atomic();
+	set_bit(irq, &vcpu->arch.irqs_pending_mask);
+
+	kvm_vcpu_kick(vcpu);
+
+	return 0;
+}
+
+int kvm_riscv_vcpu_unset_interrupt(struct kvm_vcpu *vcpu, unsigned int irq)
+{
+	if (irq != IRQ_S_SOFT &&
+	    irq != IRQ_S_TIMER &&
+	    irq != IRQ_S_EXT)
+		return -EINVAL;
+
+	clear_bit(irq, &vcpu->arch.irqs_pending);
+	smp_mb__before_atomic();
+	set_bit(irq, &vcpu->arch.irqs_pending_mask);
+
+	return 0;
+}
+
+bool kvm_riscv_vcpu_has_interrupt(struct kvm_vcpu *vcpu)
+{
+	return (READ_ONCE(vcpu->arch.irqs_pending) &
+		vcpu->arch.guest_csr.vsie) ? true : false;
+}
+
+void kvm_riscv_vcpu_power_off(struct kvm_vcpu *vcpu)
+{
+	vcpu->arch.power_off = true;
+	kvm_make_request(KVM_REQ_SLEEP, vcpu);
+	kvm_vcpu_kick(vcpu);
+}
+
+void kvm_riscv_vcpu_power_on(struct kvm_vcpu *vcpu)
+{
+	vcpu->arch.power_off = false;
+	kvm_vcpu_wake_up(vcpu);
+}
+
 int kvm_arch_vcpu_ioctl_get_mpstate(struct kvm_vcpu *vcpu,
 				    struct kvm_mp_state *mp_state)
 {
-	/* TODO: */
+	if (vcpu->arch.power_off)
+		mp_state->mp_state = KVM_MP_STATE_STOPPED;
+	else
+		mp_state->mp_state = KVM_MP_STATE_RUNNABLE;
+
 	return 0;
 }
 
 int kvm_arch_vcpu_ioctl_set_mpstate(struct kvm_vcpu *vcpu,
 				    struct kvm_mp_state *mp_state)
 {
-	/* TODO: */
-	return 0;
+	int ret = 0;
+
+	switch (mp_state->mp_state) {
+	case KVM_MP_STATE_RUNNABLE:
+		vcpu->arch.power_off = false;
+		break;
+	case KVM_MP_STATE_STOPPED:
+		kvm_riscv_vcpu_power_off(vcpu);
+		break;
+	default:
+		ret = -EINVAL;
+	}
+
+	return ret;
 }
 
 int kvm_arch_vcpu_ioctl_set_guest_debug(struct kvm_vcpu *vcpu,
@@ -248,7 +350,51 @@ void kvm_arch_vcpu_put(struct kvm_vcpu *vcpu)
 
 static void kvm_riscv_check_vcpu_requests(struct kvm_vcpu *vcpu)
 {
-	/* TODO: */
+	struct swait_queue_head *wq = kvm_arch_vcpu_wq(vcpu);
+
+	if (kvm_request_pending(vcpu)) {
+		if (kvm_check_request(KVM_REQ_SLEEP, vcpu)) {
+			swait_event_interruptible_exclusive(*wq,
+						((!vcpu->arch.power_off) &&
+						(!vcpu->arch.pause)));
+
+			if (vcpu->arch.power_off || vcpu->arch.pause) {
+				/*
+				 * Awaken to handle a signal, request to
+				 * sleep again later.
+				 */
+				kvm_make_request(KVM_REQ_SLEEP, vcpu);
+			}
+		}
+
+		if (kvm_check_request(KVM_REQ_VCPU_RESET, vcpu))
+			kvm_riscv_reset_vcpu(vcpu);
+	}
+}
+
+static void kvm_riscv_update_vsip(struct kvm_vcpu *vcpu)
+{
+	struct kvm_vcpu_csr *csr = &vcpu->arch.guest_csr;
+	unsigned long *vsip = raw_cpu_ptr(vsip_shadow);
+
+	if (*vsip != csr->vsip) {
+		csr_write(CSR_VSIP, csr->vsip);
+		*vsip = csr->vsip;
+	}
+}
+
+int kvm_riscv_setup_vsip(void)
+{
+	vsip_shadow = alloc_percpu(unsigned long);
+	if (!vsip_shadow)
+		return -ENOMEM;
+
+	return 0;
+}
+
+void kvm_riscv_cleanup_vsip(void)
+{
+	free_percpu(vsip_shadow);
 }
 
 int kvm_arch_vcpu_ioctl_run(struct kvm_vcpu *vcpu, struct kvm_run *run)
@@ -311,6 +457,15 @@ int kvm_arch_vcpu_ioctl_run(struct kvm_vcpu *vcpu, struct kvm_run *run)
 		srcu_read_unlock(&vcpu->kvm->srcu, vcpu->arch.srcu_idx);
 		smp_mb__after_srcu_read_unlock();
 
+		/*
+		 * We might have got VCPU interrupts updated asynchronously
+		 * so update it in HW.
+		 */
+		kvm_riscv_vcpu_flush_interrupts(vcpu);
+
+		/* Update VSIP CSR for current CPU */
+		kvm_riscv_update_vsip(vcpu);
+
 		if (ret <= 0 ||
 		    kvm_request_pending(vcpu)) {
 			vcpu->mode = OUTSIDE_GUEST_MODE;
@@ -334,6 +489,9 @@ int kvm_arch_vcpu_ioctl_run(struct kvm_vcpu *vcpu, struct kvm_run *run)
 		scause = csr_read(CSR_SCAUSE);
 		stval = csr_read(CSR_STVAL);
 
+		/* Syncup interrupts state with HW */
+		kvm_riscv_vcpu_sync_interrupts(vcpu);
+
 		/*
 		 * We may have taken a host interrupt in VS/VU-mode (i.e.
 		 * while executing the guest). This interrupt is still
-- 
2.17.1


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
