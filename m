Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E4FDD96A7
	for <lists+linux-riscv@lfdr.de>; Wed, 16 Oct 2019 18:12:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=r0IaIgEGiU9wC7wWMNW8EbXzAtRdWxlXPiJ4em/YbTk=; b=QlNKuoSM9zAhOR
	TyS5eH8ZXBg6noy2m8LJDpGc81mxb5DAAHGeZu80Fxp8IeiVhqfN2zBRuQJgKAJ5xL6kDeE7Fqdvk
	4b58HXK+lYRn2ZxX5tmNP2ww7/6D3A5hr2+4qVLHhH+SmeAO+uEO6w0yBqJjcVJVxH3po6HfuL72T
	TnE4AMsCuJvIqkP4ECNoA7e0AsM27RvX4l2vNyTbERTCe3MMkAkViYn/HmnMrPMPQwZwGedIh69Qx
	kCRmSRNa/DaQYIKjFYB++2z0YDkXLsXWwysw2H1ozIdnWKkyU9BNUUpTdC9fwXLvCIQSJ/ifcoGZH
	+srEa5v/QM2RRlzpQyKQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKluD-0001xj-5g; Wed, 16 Oct 2019 16:12:09 +0000
Received: from esa5.hgst.iphmx.com ([216.71.153.144])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKlu9-0001xK-JM
 for linux-riscv@lists.infradead.org; Wed, 16 Oct 2019 16:12:07 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1571242326; x=1602778326;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=N5dulLQf3hgT2RxWQyYvhjucX5AAow5d2TTU6zECygc=;
 b=rrCYSdG5FnRff+v14qKwfL/6KT7ml3V0D7lSa55voANiHZcvd6SqXMI+
 J5wYM6V5Yqq+yZHbIvZPIxhDhWBZHV+E2xJdjSUucj/VekEIfd+UBhm4a
 IwzrBtEtA+DEOMQu7YcXDsitffwo18hRAB3b7MvV2D2BBDHnicgf+b4ug
 MX0ijmyYDZcEj8FANwIVWKTEjhZ73rmugCqMdlulnBLM4UJgmWgPAscDf
 ZhhyRJIw2TObFwuz4b2tDjGd2CkYAkW6BjwsPnZdrwgHDkL930/p/055F
 VU+Ar1bTQ3LNFg9S68AXCFxGKFItutEnCEgY5t/p6JQuG1ZwKY3Pginp9 A==;
IronPort-SDR: dl4AqDVwLLNms/QZ9j8RQUBH5e1lDifDGGTFBB28siNW1ROj2NfMaNLArzCMZoT0gvIlxZ5kd3
 py3FFyWkiZJ+e0KDgF2XWJ1sYwrcdd4XNLvC1fF7xNFx5UMiAlC4K/ZZhIRWxnst81jD9HOLfv
 NKSrdJcmSjOPfG77WyxeGpQMmkzigrCsoLMOx1ACyXK6OWk0NjQZ/l+uI4XT0lDmkpIOAbNxCY
 CIz/x5KEYyXbBLEHD+jz0bPtm5a3032Y15Uj/KNM++ecEJbOQDAzFRz3R7e1Ylw21YPe+RxKLh
 k/I=
X-IronPort-AV: E=Sophos;i="5.67,304,1566835200"; d="scan'208";a="121448416"
Received: from mail-dm3nam03lp2056.outbound.protection.outlook.com (HELO
 NAM03-DM3-obe.outbound.protection.outlook.com) ([104.47.41.56])
 by ob1.hgst.iphmx.com with ESMTP; 17 Oct 2019 00:12:04 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=RaB1i8t3iCprzcEdJc8rGjelc4v+sry4pQgUvBTASQfLLV72puKQapUZrnG+C4duvyJVMW4a4ExXry1YXyqodTkduFa/RAcPRsOJv8XsCJ4P1OE/fwDxLIVc2IfJkSAJSmoLUTcacDVxlhNHjKv3jSyuIm6QBvkBI2exFMZLGPHQ0JhN2UCVvdh97loBBVIHvM3WFQpR19re8fYBG6RXed3wmB3iEM+AyxybFr3HWC9W5HWV/6yW9qwJnqboNYc0/N+Fz7ToE4ErVmLFt0YhKur+gO1qVf2N7wMVQLb1UGCTvKBw674j5osmsbRelaJtTak+u/Yang3GapOALS4nFA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Nep0dmeazKSZa9Xj2J/bl1M+YpmKynzq05Wi8hlrlJc=;
 b=ZSNfjZN+/HaAn3gvd/alEavBsAiE4B2t4LQfkoEjUPAMY1Zcmb4ctqVhwcjWPt4GN1jh7XVxPAv7lptZzdZ0xgABLzNxK+fZyDapNy7Z9sylZnjLPCoPyoL4Iyyeuab0QroBSVEsUYnAzZqkURMWjyOGxnFcTpI8kE+ni+YFIehLH4tvOBWlJRHu8a8UMOOyL6B5XGVfufAHfU8PZGHlvPMqZsMtXFxUMlvAiFT/4gqHrpPfYogGy8rndjMN2oD37SUisKmRonbbibWCck5UxmSauosGF4NHrj9o1R4XKQm7fOzOWD5NF1FPv/5QlzD8N8W0own5KOkMf2szABeHMA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wdc.com; dmarc=pass action=none header.from=wdc.com; dkim=pass
 header.d=wdc.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Nep0dmeazKSZa9Xj2J/bl1M+YpmKynzq05Wi8hlrlJc=;
 b=a5qbaLU6Qss6KaS84plZFkBW9PZW6gTxAwaMhTukQH0vJk9AzuG8mcH+62hHtlP4ZHSsjUaYVREhVL9X7i1aiZT7KnzToBq9U55Ac4oFAHoxbBd51rmbD/9JVCmqd+XTVaH9NqF0bcVdKVZyTrWaCuRPLVE3Q3g7/yBJQfTVPjI=
Received: from MN2PR04MB6061.namprd04.prod.outlook.com (20.178.246.15) by
 MN2PR04MB6397.namprd04.prod.outlook.com (52.132.170.135) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2347.17; Wed, 16 Oct 2019 16:12:03 +0000
Received: from MN2PR04MB6061.namprd04.prod.outlook.com
 ([fe80::1454:87a:13b0:d3a]) by MN2PR04MB6061.namprd04.prod.outlook.com
 ([fe80::1454:87a:13b0:d3a%7]) with mapi id 15.20.2347.023; Wed, 16 Oct 2019
 16:12:03 +0000
From: Anup Patel <Anup.Patel@wdc.com>
To: Palmer Dabbelt <palmer@sifive.com>, Paul Walmsley
 <paul.walmsley@sifive.com>, Paolo Bonzini <pbonzini@redhat.com>, Radim K
 <rkrcmar@redhat.com>
Subject: [PATCH v9 19/22] RISC-V: KVM: Remove per-CPU vsip_shadow variable
Thread-Topic: [PATCH v9 19/22] RISC-V: KVM: Remove per-CPU vsip_shadow variable
Thread-Index: AQHVhDxyq88TV5U/o0+PXStFQacqrg==
Date: Wed, 16 Oct 2019 16:12:03 +0000
Message-ID: <20191016160649.24622-20-anup.patel@wdc.com>
References: <20191016160649.24622-1-anup.patel@wdc.com>
In-Reply-To: <20191016160649.24622-1-anup.patel@wdc.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: MAXPR01CA0098.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a00:5d::16) To MN2PR04MB6061.namprd04.prod.outlook.com
 (2603:10b6:208:d8::15)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Anup.Patel@wdc.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-mailer: git-send-email 2.17.1
x-originating-ip: [106.51.27.162]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 90b0bc9e-fcde-48f2-20d2-08d7525394ad
x-ms-office365-filtering-ht: Tenant
x-ms-traffictypediagnostic: MN2PR04MB6397:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MN2PR04MB63971CA0F29725DB136A9FEA8D920@MN2PR04MB6397.namprd04.prod.outlook.com>
wdcipoutbound: EOP-TRUE
x-ms-oob-tlc-oobclassifiers: OLM:2657;
x-forefront-prvs: 0192E812EC
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(136003)(39860400002)(376002)(396003)(346002)(366004)(189003)(199004)(81166006)(102836004)(316002)(44832011)(486006)(55236004)(110136005)(305945005)(7736002)(8676002)(11346002)(2616005)(446003)(54906003)(476003)(86362001)(6512007)(6436002)(386003)(6506007)(81156014)(2906002)(6486002)(1076003)(8936002)(186003)(26005)(50226002)(5660300002)(9456002)(36756003)(66946007)(64756008)(66446008)(66476007)(71200400001)(71190400001)(66556008)(52116002)(7416002)(99286004)(256004)(25786009)(76176011)(14454004)(4326008)(478600001)(3846002)(6116002)(14444005)(66066001);
 DIR:OUT; SFP:1102; SCL:1; SRVR:MN2PR04MB6397;
 H:MN2PR04MB6061.namprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 0Nc5l7gNyOLrl/Yg2Y1rj0PNCxbCQKRgAR6TyKDZ1H06Svkmclv9mzIlCGOv2Zl86VwaTzV5c7mZPUoRVt2tHroChMT0t0shEk9UJLmnMl1tmHvSVvgaiKEf2EYfaUBNlmfG54QMBh9qGeDXdmTVVb5ivH9bbi928WhlKvEoBkYEzqzqWyX+PNG56+YcksyZlpM+iyRqMxObfk30VMg5slFcBxC81edKUWq58vwb8bZsPVwPTWTGbbvOCWKQWhJvA0R2sshksK32prj/iir3yEpGBIvmefC6qVsEJiHZHakIxtmFmk407rAGulvPQoq7xN4X0daPSSzpaqT9TLGXPvgl4swKoPzoPKlPe77l+E47a7szu9vn4QdUZbsoFqtcDhMkuDUi2ml15FpKdUzIyEiZQm9grRUlGsKakr7SIWw=
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 90b0bc9e-fcde-48f2-20d2-08d7525394ad
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Oct 2019 16:12:03.0629 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: pDOu5WzDoJ53NuZzG8LEV/HkpIbpFuWCO4FPHjZMgWT/zkDoAL23IQB0oXaCqPzjOkxg08RL2bba6jVz6IEl4g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR04MB6397
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191016_091205_647701_E48892F8 
X-CRM114-Status: GOOD (  14.18  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.153.144 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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

Currently, we track last value wrote to VSIP CSR using per-CPU
vsip_shadow variable but this easily goes out-of-sync because
Guest can update VSIP.SSIP bit directly.

To simplify things, we remove per-CPU vsip_shadow variable and
unconditionally write vcpu->arch.guest_csr.vsip to VSIP CSR in
run-loop.

Signed-off-by: Anup Patel <anup.patel@wdc.com>
---
 arch/riscv/include/asm/kvm_host.h |  3 ---
 arch/riscv/kvm/main.c             |  6 ------
 arch/riscv/kvm/vcpu.c             | 24 +-----------------------
 3 files changed, 1 insertion(+), 32 deletions(-)

diff --git a/arch/riscv/include/asm/kvm_host.h b/arch/riscv/include/asm/kvm_host.h
index ec1ca4bc98f2..cd86acaed055 100644
--- a/arch/riscv/include/asm/kvm_host.h
+++ b/arch/riscv/include/asm/kvm_host.h
@@ -202,9 +202,6 @@ static inline void kvm_arch_vcpu_uninit(struct kvm_vcpu *vcpu) {}
 static inline void kvm_arch_sched_in(struct kvm_vcpu *vcpu, int cpu) {}
 static inline void kvm_arch_vcpu_block_finish(struct kvm_vcpu *vcpu) {}
 
-int kvm_riscv_setup_vsip(void);
-void kvm_riscv_cleanup_vsip(void);
-
 #define KVM_ARCH_WANT_MMU_NOTIFIER
 int kvm_unmap_hva_range(struct kvm *kvm,
 			unsigned long start, unsigned long end);
diff --git a/arch/riscv/kvm/main.c b/arch/riscv/kvm/main.c
index 55df85184241..002301a27d29 100644
--- a/arch/riscv/kvm/main.c
+++ b/arch/riscv/kvm/main.c
@@ -61,17 +61,11 @@ void kvm_arch_hardware_disable(void)
 
 int kvm_arch_init(void *opaque)
 {
-	int ret;
-
 	if (!riscv_isa_extension_available(NULL, h)) {
 		kvm_info("hypervisor extension not available\n");
 		return -ENODEV;
 	}
 
-	ret = kvm_riscv_setup_vsip();
-	if (ret)
-		return ret;
-
 	kvm_riscv_stage2_vmid_detect();
 
 	kvm_info("hypervisor extension available\n");
diff --git a/arch/riscv/kvm/vcpu.c b/arch/riscv/kvm/vcpu.c
index fd77cd39dd8c..f1a218d3a8cf 100644
--- a/arch/riscv/kvm/vcpu.c
+++ b/arch/riscv/kvm/vcpu.c
@@ -111,8 +111,6 @@ static void kvm_riscv_vcpu_host_fp_restore(struct kvm_cpu_context *cntx) {}
 				 riscv_isa_extension_mask(s) | \
 				 riscv_isa_extension_mask(u))
 
-static unsigned long __percpu *vsip_shadow;
-
 static void kvm_riscv_reset_vcpu(struct kvm_vcpu *vcpu)
 {
 	struct kvm_vcpu_csr *csr = &vcpu->arch.guest_csr;
@@ -765,7 +763,6 @@ int kvm_arch_vcpu_ioctl_set_guest_debug(struct kvm_vcpu *vcpu,
 void kvm_arch_vcpu_load(struct kvm_vcpu *vcpu, int cpu)
 {
 	struct kvm_vcpu_csr *csr = &vcpu->arch.guest_csr;
-	unsigned long *vsip = raw_cpu_ptr(vsip_shadow);
 
 	csr_write(CSR_VSSTATUS, csr->vsstatus);
 	csr_write(CSR_VSIE, csr->vsie);
@@ -775,7 +772,6 @@ void kvm_arch_vcpu_load(struct kvm_vcpu *vcpu, int cpu)
 	csr_write(CSR_VSCAUSE, csr->vscause);
 	csr_write(CSR_VSTVAL, csr->vstval);
 	csr_write(CSR_VSIP, csr->vsip);
-	*vsip = csr->vsip;
 	csr_write(CSR_VSATP, csr->vsatp);
 
 	kvm_riscv_stage2_update_hgatp(vcpu);
@@ -843,26 +839,8 @@ static void kvm_riscv_check_vcpu_requests(struct kvm_vcpu *vcpu)
 static void kvm_riscv_update_vsip(struct kvm_vcpu *vcpu)
 {
 	struct kvm_vcpu_csr *csr = &vcpu->arch.guest_csr;
-	unsigned long *vsip = raw_cpu_ptr(vsip_shadow);
-
-	if (*vsip != csr->vsip) {
-		csr_write(CSR_VSIP, csr->vsip);
-		*vsip = csr->vsip;
-	}
-}
-
-int kvm_riscv_setup_vsip(void)
-{
-	vsip_shadow = alloc_percpu(unsigned long);
-	if (!vsip_shadow)
-		return -ENOMEM;
 
-	return 0;
-}
-
-void kvm_riscv_cleanup_vsip(void)
-{
-	free_percpu(vsip_shadow);
+	csr_write(CSR_VSIP, csr->vsip);
 }
 
 int kvm_arch_vcpu_ioctl_run(struct kvm_vcpu *vcpu, struct kvm_run *run)
-- 
2.17.1


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
