Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 60172A1C20
	for <lists+linux-riscv@lfdr.de>; Thu, 29 Aug 2019 15:58:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pDRiIaAQOL3rhNgheNni59CwJ/B0EYcRHkdU7cx0NhY=; b=a7gG9Y4KcSUk/7
	1xhXIBaTSElV3Fcu8Dei92SWjBO2+a4MX6HLOLNYgoblkjvIHLBTtcVTCDWNMe8aSrakjqd1QIIE2
	PMb/O3zQlQEXCPPeq67ElZTa5v8gZHcPcAQ3M+Iv9w4muRCYe8CiDbFoEf0hIYWZmqBR2k5ou6gvi
	MU9Oks1yepTi3QZsluIbCkSPeqdWZ6QZj4Sm8oE9lmIjm7hB8PkWprkFz570oD6R2e/DjmoERI0p0
	y/N2c4JCGqIdCCg47LYZ/Wzy+5+ut/X2MCmK0iTAvzc0tKjZxt5vtV8FUh8Z7pt6RhXBbpmaZTO+g
	kdx8m3f5bzvkiCGvGl4g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3KuH-0002U8-JU; Thu, 29 Aug 2019 13:56:09 +0000
Received: from esa4.hgst.iphmx.com ([216.71.154.42])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3KuC-0002TL-Mo
 for linux-riscv@lists.infradead.org; Thu, 29 Aug 2019 13:56:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1567086965; x=1598622965;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=m4kyNVZ1rRk2FthfjB8FQ3wOnCKyxKs5UcOO5M5C6gM=;
 b=VHT8JUJIuCnpX7TU5mhAYmK5dYTz+GZQHP5kNnWWo/W9xEAYGzOA3iSh
 rpg0APJejFcncTY4WslcMfkOJJ0R00spQdPbFOT3eD9cqO8G6lsh31kkO
 0FwNVeU90IJMSPNQThWHiXCUT5kfrUSzoGZX8U8DZsBaDktpWu5tLwi4D
 S+e7T+IjTgdIqIrAZv62S8hEDida5mlpC1ifCwDBA9D0Db8Onw807w+dC
 jfeX7XYWBF8f5uiq/9kJrrMrQ2e5HxbHs29un97oLG4Y1Tg7KXUy5+xAI
 5zpCkKXcETdE9fJLsJ+2jLl+j4/Pu8sTV64iKzApS52dCr4WoAO51MRDy A==;
IronPort-SDR: T8aTGSH6qJ4Xe/gxUxXfDt6Naf1bV6f6gP+QupGBg7NjwD/jDstg/iQ9NelGwH1PpMM/tfCcc/
 YsOpyZO8pZ4YlL3D2p5sDJp22bGoMHZPH5QreE/k89gj1zrlD9toI9VNTz6EWslZ4uZcaU1VMr
 39V3/SZFD1G0pFWoXBpg/I0rmfGEQAMf6sWdLRtQUos9Nrk7Q5u6ZE7NJgyRKfDC26V6MsFHdu
 GfB+Qe6iyIwObtd+L6ebmZpJtgmdNQZXysWPkczd+Xtyg8g9HgOUXmVh6AuYeULN3A6qbimD7T
 xu8=
X-IronPort-AV: E=Sophos;i="5.64,443,1559491200"; d="scan'208";a="116951646"
Received: from mail-by2nam05lp2057.outbound.protection.outlook.com (HELO
 NAM05-BY2-obe.outbound.protection.outlook.com) ([104.47.50.57])
 by ob1.hgst.iphmx.com with ESMTP; 29 Aug 2019 21:56:02 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=FpW9FdNmT8Y8E0lRSvhDupMgAexiTDwy1PJbBAPSH2f0itRUn+tGFu3YWqtWcrd2iIrSYsVRXE5UzHoIQcSu74r5NqFVeyemrNTj1f/rRHiJd3uRMcRoN3xravqzdZ7UwmH+f0EHxGkYjiFE3EHmIlRjmSA+VJVuzttcrdlcElMFDqHOjJoDTPGrs9aztI/eO68FOYfoU9ywt+8HNnSqMNtpT9F809yXHfyytn3xw93xekA6iS8h85fjs9A5MWHoH0WuN0JVXJoRbxpAAe2Vd9b2NNGHit5yKWUrBCy99QmvmbAVdcIYHLpEllXAGU6930F/K8Go+oYofbKo1YsXPw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=G4F+pObVzraWgbSZALmMMV+JHw/3vp3JEuzXyWTcRck=;
 b=GKZWJaWlJPvkMFABMHAyMMz+E1MPcxMjhHsdxxE6U22XDePCR3dILJ+wCBez8m/rrdVrxFREV62b6+YLZv0Pr5XIbKQ5xzyE+88kHDnAOHYYoadHWXWq0rX6nPHAWd6NVaSPVexchn0eDs2gM+Ogj5xwjFq8CU13W7BUMhIBAb83GtvzehGONwprg3nVtbPO4kR0/3Yk16Fkgiaay+fzKI7EuxlIOvWa3WCcKARShGdRbzXa3BS1Jcd5TR/OiVLryJ8qHCrUT1PpF5S75o/wfBaFnlAttWp/UqdLD/IcwzhSoFF2IHsff+SMlHU9dMOB6E2RI+9wsvIXNfMk9mf9kA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wdc.com; dmarc=pass action=none header.from=wdc.com; dkim=pass
 header.d=wdc.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=G4F+pObVzraWgbSZALmMMV+JHw/3vp3JEuzXyWTcRck=;
 b=LJ46h6LnQ1jNpvGkUTvBBf3GubHllZX/9sab6RxVz67Y7C7ZtyEsYlbSb0Wk1cSg69Z8GNaWyISxaQTx9NwZIrH12Sl6hNBuw7/SnzLhqqVrh80aJNihOraKJjB35mPQahZFvlBr8Qck3q56edi8s+mepVIgn4KJ5S/ANhI80sk=
Received: from MN2PR04MB6061.namprd04.prod.outlook.com (20.178.246.15) by
 MN2PR04MB5616.namprd04.prod.outlook.com (20.179.22.29) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2199.21; Thu, 29 Aug 2019 13:56:00 +0000
Received: from MN2PR04MB6061.namprd04.prod.outlook.com
 ([fe80::e1a5:8de2:c3b1:3fb0]) by MN2PR04MB6061.namprd04.prod.outlook.com
 ([fe80::e1a5:8de2:c3b1:3fb0%7]) with mapi id 15.20.2220.013; Thu, 29 Aug 2019
 13:55:59 +0000
From: Anup Patel <Anup.Patel@wdc.com>
To: Palmer Dabbelt <palmer@sifive.com>, Paul Walmsley
 <paul.walmsley@sifive.com>, Paolo Bonzini <pbonzini@redhat.com>, Radim K
 <rkrcmar@redhat.com>
Subject: [PATCH v6 07/21] RISC-V: KVM: Implement VCPU interrupts and requests
 handling
Thread-Topic: [PATCH v6 07/21] RISC-V: KVM: Implement VCPU interrupts and
 requests handling
Thread-Index: AQHVXnF8ID7x3Nabu0SaqBvLC55/Xg==
Date: Thu, 29 Aug 2019 13:55:59 +0000
Message-ID: <20190829135427.47808-8-anup.patel@wdc.com>
References: <20190829135427.47808-1-anup.patel@wdc.com>
In-Reply-To: <20190829135427.47808-1-anup.patel@wdc.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: MAXPR0101CA0072.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a00:e::34) To MN2PR04MB6061.namprd04.prod.outlook.com
 (2603:10b6:208:d8::15)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Anup.Patel@wdc.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-mailer: git-send-email 2.17.1
x-originating-ip: [49.207.51.114]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: b4071b3c-89fa-4be0-9922-08d72c889f37
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(7168020)(4627221)(201703031133081)(201702281549075)(8990200)(5600166)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:MN2PR04MB5616; 
x-ms-traffictypediagnostic: MN2PR04MB5616:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MN2PR04MB5616AA32AE3EC246748C75448DA20@MN2PR04MB5616.namprd04.prod.outlook.com>
wdcipoutbound: EOP-TRUE
x-ms-oob-tlc-oobclassifiers: OLM:3044;
x-forefront-prvs: 0144B30E41
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(39860400002)(136003)(366004)(376002)(346002)(396003)(189003)(199004)(7416002)(52116002)(81166006)(316002)(6506007)(386003)(30864003)(25786009)(7736002)(81156014)(305945005)(2906002)(36756003)(71190400001)(14454004)(99286004)(1076003)(256004)(14444005)(4326008)(66946007)(76176011)(66446008)(64756008)(66556008)(66476007)(102836004)(6116002)(50226002)(55236004)(476003)(6512007)(3846002)(71200400001)(5660300002)(26005)(186003)(44832011)(86362001)(66066001)(6436002)(446003)(8936002)(6486002)(110136005)(54906003)(2616005)(486006)(53936002)(11346002)(478600001)(8676002);
 DIR:OUT; SFP:1102; SCL:1; SRVR:MN2PR04MB5616;
 H:MN2PR04MB6061.namprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: aEofCIOJ5EBPISjol18nFXiAOg9EV5YrWnjWgCVJxJZMVJAuoMEy0kInUOYC1W9np9PV5aih/Dk1NqsT/s8pRgy0DjJKakMz9btJxxQsp49yBBwFvEPvtZVfM1Jq+KruRaBP4m+Q9A6+mbXlk/XkD6TfkBKHARDgFwXgppJ9hgtdUGsmhn9eVmw+MT0UnOGyiTskEZUa7fUhEQUO6DXyDUCpaZxmEI3bhkiCNGE6iwOFluWxMLuz/NY9SBU4NZPlmr4EpCKkDsx3EfsJ5kthpCH4hhTDKtCWCOa7ibFBvJzDbxd3fTU63+xwmTCo6gs9QylirMkDv2BBzxvbAIeXgjWkBtXNjIOjn+kjuN5aJ0Uu1b4e2y4P1qKHiSgBO7CzI9TVprr6HZ/GjDDDzAadQ6c8m6UPLREQh4lUOvdHRoE=
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b4071b3c-89fa-4be0-9922-08d72c889f37
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 Aug 2019 13:55:59.7708 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: lFLJURWpY0hnYYrbxkISEWLfQY7bRRi/kXygZFHUOGXp6xkM1nGEkes+UPVkVGZ/alb/MlydgLZkt3MQrgTKyA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR04MB5616
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190829_065605_040432_3C534C01 
X-CRM114-Status: GOOD (  20.22  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.154.42 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Reviewed-by: Alexander Graf <graf@amazon.com>
---
 arch/riscv/include/asm/kvm_host.h |  26 ++++
 arch/riscv/include/uapi/asm/kvm.h |   3 +
 arch/riscv/kvm/main.c             |   8 ++
 arch/riscv/kvm/vcpu.c             | 193 ++++++++++++++++++++++++++++--
 4 files changed, 217 insertions(+), 13 deletions(-)

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
index 8272b05d6ce4..3223f723f79e 100644
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
@@ -116,8 +122,8 @@ void kvm_arch_vcpu_destroy(struct kvm_vcpu *vcpu)
 
 int kvm_cpu_has_pending_timer(struct kvm_vcpu *vcpu)
 {
-	/* TODO: */
-	return 0;
+	return READ_ONCE(vcpu->arch.irqs_pending) &
+		vcpu->arch.guest_csr.vsie & (1UL << IRQ_S_TIMER);
 }
 
 void kvm_arch_vcpu_blocking(struct kvm_vcpu *vcpu)
@@ -130,20 +136,18 @@ void kvm_arch_vcpu_unblocking(struct kvm_vcpu *vcpu)
 
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
@@ -164,7 +168,21 @@ vm_fault_t kvm_arch_vcpu_fault(struct kvm_vcpu *vcpu, struct vm_fault *vmf)
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
 
@@ -213,18 +231,111 @@ int kvm_arch_vcpu_ioctl_set_regs(struct kvm_vcpu *vcpu, struct kvm_regs *regs)
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
+
+	/* Guest can directly update VSIP software interrupt bits */
+	if (vcpu->arch.guest_csr.vsip ^ READ_ONCE(vcpu->arch.irqs_pending)) {
+		if (vcpu->arch.guest_csr.vsip & (1UL << IRQ_S_SOFT))
+			kvm_riscv_vcpu_set_interrupt(vcpu, IRQ_S_SOFT);
+		else
+			kvm_riscv_vcpu_unset_interrupt(vcpu, IRQ_S_SOFT);
+	}
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
@@ -248,7 +359,51 @@ void kvm_arch_vcpu_put(struct kvm_vcpu *vcpu)
 
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
@@ -311,6 +466,15 @@ int kvm_arch_vcpu_ioctl_run(struct kvm_vcpu *vcpu, struct kvm_run *run)
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
@@ -334,6 +498,9 @@ int kvm_arch_vcpu_ioctl_run(struct kvm_vcpu *vcpu, struct kvm_run *run)
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
