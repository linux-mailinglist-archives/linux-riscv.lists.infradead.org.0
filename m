Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E8A2E129571
	for <lists+linux-riscv@lfdr.de>; Mon, 23 Dec 2019 12:37:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Transfer-Encoding:Content-Type:In-Reply-To:References:Message-ID:Date
	:Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=BclezZQQZc81op4vpUZfGg1UCnUK3u3u2SkvXCK4Txg=; b=ajozyP+QzVmHn5k7q7vM9Ez9d
	6k4Bw7B5azlymMzm7sQDH6OJ6N/59Jnqo/uqz3+OMxu1j42x4lSj+jz5t8I5fAk4ahLfJCIJ94rZI
	maJzOMYvRvOL3PWZAvhwwCQyY5CLOp5/hBqSbOuDlcwn5xmjWwivacYCk8YnbVJhrs5Z7UsSNulzQ
	syHgHCc6A3WGSTzjA+ZkNGhXfL2NP7+J9NRfK1SNqm63P3s/6t0LbiGyASZ+6a/Z6OVATup4Kbq3W
	grnElmxmbxiIPodnJIw+Bc8Hp8o41fMGEMRZfU4NiaQz/oRyr00S9YWUyLEmJq4ZWWz8QJ3+92Fqo
	28gjuwofw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ijM1S-0001QE-Eh; Mon, 23 Dec 2019 11:37:14 +0000
Received: from esa4.hgst.iphmx.com ([216.71.154.42])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ijM1H-0001IF-K4; Mon, 23 Dec 2019 11:37:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1577101023; x=1608637023;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=n75wBJmUdHSzn+tdIAtpDotncTFsyJkJNtCOn3AuFKM=;
 b=fkN4t/TOKtUMTfE0DcaeHrv28jryr0Ym8rTPjqr5h1LBx4kmsdYgB8LU
 ybO+SP3sycm1goxLaYylFv/Pk1uBkZf8IiikubpLsg2qTZF2+l97gMQhX
 HTqpDXCImFZMWlmuEwZZecal7g5eDbr4BTxlDolQtgyw01uYPGkbIn7ZG
 nmVGqABPI3HqRCrjt74LVVxB69BurP01KRufQ1EQbcKvie0dfJhuje+bf
 dDUba6t6O1SbDLVdVjt7FbK1J/hjLbvwvVdTaJgvx18GUWxhmVwKrU8jc
 M7Z58KHVek9j8iZjxvn50Dq6HRgaTCCKSygNZA+BYL05FNVKzBZkyH2Ed g==;
IronPort-SDR: aBo2Nmio3ugwDzmgVMfOY2QXIqR4lwol9lGnWzgySItJfpH7whBZXpe9e3OmNGWh1ufr/+U6xJ
 FdxPi9vFnO9GNZMG9DHjWLF46+MhSBQmRmou+lPDiLdmbpylbMc9wMEGOxXeFSseZPs8Lk+SQS
 cGQwfr+mKEA9EUEtgtR4m6RoRLfbD8P8eG5+MWdfYtDpPf+YHUP4BWvjJmrppxsOYG8EKtikWT
 2bP5OSnh3+e4QgH3YBdxeZB/VwzpunIRJ/XI6MRmpneMKP2PGjhDuosRToyrNpT9dxRQRGgAli
 S5k=
X-IronPort-AV: E=Sophos;i="5.69,347,1571673600"; d="scan'208";a="125956227"
Received: from mail-mw2nam12lp2042.outbound.protection.outlook.com (HELO
 NAM12-MW2-obe.outbound.protection.outlook.com) ([104.47.66.42])
 by ob1.hgst.iphmx.com with ESMTP; 23 Dec 2019 19:37:01 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=QARPZxa2uHv/hACiZDJzHHMQ8yOF82JgLG8ZXM0Ad6jbsPrkrLiToktOzkT1vetTIgSpDNs0cC/E+Mdw0E2Gx9Iv2vdYbfnz5eDEt9SkQGqAbVELCUaiGGgcaqn3wOHs3TYMWflEQS7LamppjNhmIKx9WQ/ir9yCTXer9DrxIvT/v9AIwE3SK3cX5ICuPkdn0lm/+c3MurcgX5MdmKRqVwr1llW1S+yRlRfBfnz/AOdXD/vOYD8+UR0WwqZGf6BcGCXC7ZuBhNG34q2BsQTSBsuQgf5SZ1JTxs3/Ijn7ixALtoqqpiN/utJlEzwX2MtFVOF+pjtPpNut3LGZOLHKjQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=BclezZQQZc81op4vpUZfGg1UCnUK3u3u2SkvXCK4Txg=;
 b=ZaQ46rD8xOOBi5gZ3+I9BYldEyfZeHdBQTwZWvKMYh5zpSlD3RT2lfyA0TMMSEP1ErrZVQzwV8Jc6LtEB96hTSTYaYBFFeNAf9UTl9SUZd6TQftmtWRP9dGwEng6dJ3cTyhWirWqn4+S5UX5regTXlYbNLcAA7c+sYKZbqI5jnHUBhkAdc878TzPBukSRJ4JHQU6RHujU6UZtU/Pb93vI/rrhWlDlJb+HZVvXd2eDYAJuojBH7YAFv0FEzraV3WJpkXLmUxp5oSrCe+vFjeAkImVaTnyGQ9SPD7fbrlr9T5GO0A4WIrTw+PQbpfa9q2fSba/5+C9Bgg9qNILXCHUOA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wdc.com; dmarc=pass action=none header.from=wdc.com; dkim=pass
 header.d=wdc.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=BclezZQQZc81op4vpUZfGg1UCnUK3u3u2SkvXCK4Txg=;
 b=Own4OAoJzOwGE8YZ2r+nkQoIsrKG5SAT/KKBvp5uLas1byQ2G47GljB5ncgfMx8aaUKHAlA52JGHIB1DqmQH3rJPn5sDrwUk/HmrC6v4qr8gmPHXh+XCr3XD7FCtiUe4s6wj9NoKSoTl6nLgUAT3VZAIFcOgNu+llUykdQKb+CM=
Received: from MN2PR04MB6061.namprd04.prod.outlook.com (20.178.246.15) by
 MN2PR04MB6480.namprd04.prod.outlook.com (52.132.171.74) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2559.15; Mon, 23 Dec 2019 11:37:00 +0000
Received: from MN2PR04MB6061.namprd04.prod.outlook.com
 ([fe80::a9a0:3ffa:371f:ad89]) by MN2PR04MB6061.namprd04.prod.outlook.com
 ([fe80::a9a0:3ffa:371f:ad89%7]) with mapi id 15.20.2559.017; Mon, 23 Dec 2019
 11:37:00 +0000
Received: from wdc.com (106.51.20.238) by
 MA1PR01CA0077.INDPRD01.PROD.OUTLOOK.COM (2603:1096:a00::17) with Microsoft
 SMTP Server (version=TLS1_2, cipher=) via Frontend Transport;
 Mon, 23 Dec 2019 11:36:54 +0000
From: Anup Patel <Anup.Patel@wdc.com>
To: Palmer Dabbelt <palmer@dabbelt.com>, Paul Walmsley
 <paul.walmsley@sifive.com>, Albert Ou <aou@eecs.berkeley.edu>, Paolo Bonzini
 <pbonzini@redhat.com>, Radim K <rkrcmar@redhat.com>
Subject: [PATCH v10 13/19] RISC-V: KVM: Implement MMU notifiers
Thread-Topic: [PATCH v10 13/19] RISC-V: KVM: Implement MMU notifiers
Thread-Index: AQHVuYVJYu0b9jWJBkmdj4hSYTJGDg==
Date: Mon, 23 Dec 2019 11:37:00 +0000
Message-ID: <20191223113443.68969-14-anup.patel@wdc.com>
References: <20191223113443.68969-1-anup.patel@wdc.com>
In-Reply-To: <20191223113443.68969-1-anup.patel@wdc.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: MA1PR01CA0077.INDPRD01.PROD.OUTLOOK.COM (2603:1096:a00::17)
 To MN2PR04MB6061.namprd04.prod.outlook.com
 (2603:10b6:208:d8::15)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Anup.Patel@wdc.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-mailer: git-send-email 2.17.1
x-originating-ip: [106.51.20.238]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 5f8f80f2-09fc-47d5-9dfb-08d7879c6c55
x-ms-traffictypediagnostic: MN2PR04MB6480:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MN2PR04MB648006D038F760CA493120F08D2E0@MN2PR04MB6480.namprd04.prod.outlook.com>
wdcipoutbound: EOP-TRUE
x-ms-oob-tlc-oobclassifiers: OLM:2089;
x-forefront-prvs: 0260457E99
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(366004)(396003)(136003)(39860400002)(346002)(376002)(199004)(189003)(36756003)(2616005)(956004)(478600001)(44832011)(2906002)(55016002)(7416002)(52116002)(7696005)(66446008)(66556008)(64756008)(66476007)(4326008)(6666004)(1006002)(66946007)(8936002)(26005)(1076003)(54906003)(110136005)(186003)(8676002)(71200400001)(81166006)(81156014)(55236004)(86362001)(16526019)(8886007)(5660300002)(316002)(32040200004);
 DIR:OUT; SFP:1102; SCL:1; SRVR:MN2PR04MB6480;
 H:MN2PR04MB6061.namprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: H24M8w2/fWgBhZE7dwydDq1ut1M0MgwJQ74m3KtONe+BSOtby78dM4Jya7ihGF/toudZtOepYh5lT7qeWFR87AFiNCddlkRuVte1P3vRcr0McEd5wg9Mpa80e85fbogaNuhVRGx/hkce3VDip6zF3O/clxOrzt3GlxeagfWTjPL3gdbautqUUl24y01xSTHbGxM3PzcCBDo31UXX1VMMflPoLks+VhMqxLwg7np0KNJ4M03xzEdNPpzfRExdweI7NuKvKpu8nCvlOh7KdJIUxvdhR1lfdklDJp+bZOQ/wWzJXUidQm6fSA+q1en/yuRjHPzMYL8qabBzxQWQsqWwbM/FurWkaz4RKLykw2ePUEhIn0GgTgY9F1mzWDAwMD8pih/STv5P2Me+LjIQdBd77Kl0vCU5+jnFfJtHP/lizK9X4Z76eXdaLgqZXUrek9MwkA1Oeo6Pua8QG1oEvkJqQEc9QwrnrgcqTzT8cJ6de7wjA3+i9aMGrnhTqXBTsLC8
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5f8f80f2-09fc-47d5-9dfb-08d7879c6c55
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Dec 2019 11:37:00.0941 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: IbqYSO/WyM7GNwgPztDosC6roA1D0EK5o6sY/43meJgwV2uzoErxqecPhb5jukZ8WLoz3ltR1M5n0+A3/QS3Bw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR04MB6480
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191223_033703_746048_11738BAA 
X-CRM114-Status: GOOD (  14.59  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.154.42 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Damien Le Moal <Damien.LeMoal@wdc.com>,
 "kvm@vger.kernel.org" <kvm@vger.kernel.org>, Anup Patel <anup@brainfault.org>,
 Anup Patel <Anup.Patel@wdc.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Atish Patra <Atish.Patra@wdc.com>, Alistair Francis <Alistair.Francis@wdc.com>,
 "kvm-riscv@lists.infradead.org" <kvm-riscv@lists.infradead.org>,
 Alexander Graf <graf@amazon.com>,
 "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>,
 Christoph Hellwig <hch@lst.de>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

This patch implements MMU notifiers for KVM RISC-V so that Guest
physical address space is in-sync with Host physical address space.

This will allow swapping, page migration, etc to work transparently
with KVM RISC-V.

Signed-off-by: Anup Patel <anup.patel@wdc.com>
Acked-by: Paolo Bonzini <pbonzini@redhat.com>
Reviewed-by: Paolo Bonzini <pbonzini@redhat.com>
Reviewed-by: Alexander Graf <graf@amazon.com>
---
 arch/riscv/include/asm/kvm_host.h |   7 ++
 arch/riscv/kvm/Kconfig            |   1 +
 arch/riscv/kvm/mmu.c              | 129 +++++++++++++++++++++++++++++-
 arch/riscv/kvm/vm.c               |   1 +
 4 files changed, 137 insertions(+), 1 deletion(-)

diff --git a/arch/riscv/include/asm/kvm_host.h b/arch/riscv/include/asm/kvm=
_host.h
index dd1acb011fff..cc0b09918431 100644
--- a/arch/riscv/include/asm/kvm_host.h
+++ b/arch/riscv/include/asm/kvm_host.h
@@ -190,6 +190,13 @@ static inline void kvm_arch_vcpu_uninit(struct kvm_vcp=
u *vcpu) {}
 static inline void kvm_arch_sched_in(struct kvm_vcpu *vcpu, int cpu) {}
 static inline void kvm_arch_vcpu_block_finish(struct kvm_vcpu *vcpu) {}
=20
+#define KVM_ARCH_WANT_MMU_NOTIFIER
+int kvm_unmap_hva_range(struct kvm *kvm,
+			unsigned long start, unsigned long end);
+int kvm_set_spte_hva(struct kvm *kvm, unsigned long hva, pte_t pte);
+int kvm_age_hva(struct kvm *kvm, unsigned long start, unsigned long end);
+int kvm_test_age_hva(struct kvm *kvm, unsigned long hva);
+
 void __kvm_riscv_hfence_gvma_vmid_gpa(unsigned long vmid,
 				      unsigned long gpa);
 void __kvm_riscv_hfence_gvma_vmid(unsigned long vmid);
diff --git a/arch/riscv/kvm/Kconfig b/arch/riscv/kvm/Kconfig
index 88edd477b3a8..2356dc52ebb3 100644
--- a/arch/riscv/kvm/Kconfig
+++ b/arch/riscv/kvm/Kconfig
@@ -20,6 +20,7 @@ if VIRTUALIZATION
 config KVM
 	tristate "Kernel-based Virtual Machine (KVM) support (EXPERIMENTAL)"
 	depends on RISCV_SBI && MMU
+	select MMU_NOTIFIER
 	select PREEMPT_NOTIFIERS
 	select ANON_INODES
 	select KVM_MMIO
diff --git a/arch/riscv/kvm/mmu.c b/arch/riscv/kvm/mmu.c
index f491c6aa4502..d88a50cde750 100644
--- a/arch/riscv/kvm/mmu.c
+++ b/arch/riscv/kvm/mmu.c
@@ -369,6 +369,38 @@ int stage2_ioremap(struct kvm *kvm, gpa_t gpa, phys_ad=
dr_t hpa,
=20
 }
=20
+static int handle_hva_to_gpa(struct kvm *kvm,
+			     unsigned long start,
+			     unsigned long end,
+			     int (*handler)(struct kvm *kvm,
+					    gpa_t gpa, u64 size,
+					    void *data),
+			     void *data)
+{
+	struct kvm_memslots *slots;
+	struct kvm_memory_slot *memslot;
+	int ret =3D 0;
+
+	slots =3D kvm_memslots(kvm);
+
+	/* we only care about the pages that the guest sees */
+	kvm_for_each_memslot(memslot, slots) {
+		unsigned long hva_start, hva_end;
+		gfn_t gpa;
+
+		hva_start =3D max(start, memslot->userspace_addr);
+		hva_end =3D min(end, memslot->userspace_addr +
+					(memslot->npages << PAGE_SHIFT));
+		if (hva_start >=3D hva_end)
+			continue;
+
+		gpa =3D hva_to_gfn_memslot(hva_start, memslot) << PAGE_SHIFT;
+		ret |=3D handler(kvm, gpa, (u64)(hva_end - hva_start), data);
+	}
+
+	return ret;
+}
+
 void kvm_arch_free_memslot(struct kvm *kvm, struct kvm_memory_slot *free,
 			   struct kvm_memory_slot *dont)
 {
@@ -501,6 +533,95 @@ int kvm_arch_prepare_memory_region(struct kvm *kvm,
 	return ret;
 }
=20
+static int kvm_unmap_hva_handler(struct kvm *kvm,
+				 gpa_t gpa, u64 size, void *data)
+{
+	stage2_unmap_range(kvm, gpa, size);
+	return 0;
+}
+
+int kvm_unmap_hva_range(struct kvm *kvm,
+			unsigned long start, unsigned long end)
+{
+	if (!kvm->arch.pgd)
+		return 0;
+
+	handle_hva_to_gpa(kvm, start, end,
+			  &kvm_unmap_hva_handler, NULL);
+	return 0;
+}
+
+static int kvm_set_spte_handler(struct kvm *kvm,
+				gpa_t gpa, u64 size, void *data)
+{
+	pte_t *pte =3D (pte_t *)data;
+
+	WARN_ON(size !=3D PAGE_SIZE);
+	stage2_set_pte(kvm, 0, NULL, gpa, pte);
+
+	return 0;
+}
+
+int kvm_set_spte_hva(struct kvm *kvm, unsigned long hva, pte_t pte)
+{
+	unsigned long end =3D hva + PAGE_SIZE;
+	kvm_pfn_t pfn =3D pte_pfn(pte);
+	pte_t stage2_pte;
+
+	if (!kvm->arch.pgd)
+		return 0;
+
+	stage2_pte =3D pfn_pte(pfn, PAGE_WRITE_EXEC);
+	handle_hva_to_gpa(kvm, hva, end,
+			  &kvm_set_spte_handler, &stage2_pte);
+
+	return 0;
+}
+
+static int kvm_age_hva_handler(struct kvm *kvm,
+				gpa_t gpa, u64 size, void *data)
+{
+	pte_t *ptep;
+	u32 ptep_level =3D 0;
+
+	WARN_ON(size !=3D PAGE_SIZE && size !=3D PMD_SIZE && size !=3D PGDIR_SIZE=
);
+
+	if (!stage2_get_leaf_entry(kvm, gpa, &ptep, &ptep_level))
+		return 0;
+
+	return ptep_test_and_clear_young(NULL, 0, ptep);
+}
+
+int kvm_age_hva(struct kvm *kvm, unsigned long start, unsigned long end)
+{
+	if (!kvm->arch.pgd)
+		return 0;
+
+	return handle_hva_to_gpa(kvm, start, end, kvm_age_hva_handler, NULL);
+}
+
+static int kvm_test_age_hva_handler(struct kvm *kvm,
+				    gpa_t gpa, u64 size, void *data)
+{
+	pte_t *ptep;
+	u32 ptep_level =3D 0;
+
+	WARN_ON(size !=3D PAGE_SIZE && size !=3D PMD_SIZE);
+	if (!stage2_get_leaf_entry(kvm, gpa, &ptep, &ptep_level))
+		return 0;
+
+	return pte_young(*ptep);
+}
+
+int kvm_test_age_hva(struct kvm *kvm, unsigned long hva)
+{
+	if (!kvm->arch.pgd)
+		return 0;
+
+	return handle_hva_to_gpa(kvm, hva, hva,
+				 kvm_test_age_hva_handler, NULL);
+}
+
 int kvm_riscv_stage2_map(struct kvm_vcpu *vcpu, gpa_t gpa, unsigned long h=
va,
 			 bool is_write)
 {
@@ -512,7 +633,7 @@ int kvm_riscv_stage2_map(struct kvm_vcpu *vcpu, gpa_t g=
pa, unsigned long hva,
 	struct vm_area_struct *vma;
 	struct kvm *kvm =3D vcpu->kvm;
 	struct kvm_mmu_page_cache *pcache =3D &vcpu->arch.mmu_page_cache;
-	unsigned long vma_pagesize;
+	unsigned long vma_pagesize, mmu_seq;
=20
 	down_read(&current->mm->mmap_sem);
=20
@@ -545,6 +666,8 @@ int kvm_riscv_stage2_map(struct kvm_vcpu *vcpu, gpa_t g=
pa, unsigned long hva,
 		return ret;
 	}
=20
+	mmu_seq =3D kvm->mmu_notifier_seq;
+
 	hfn =3D gfn_to_pfn_prot(kvm, gfn, is_write, &writeable);
 	if (hfn =3D=3D KVM_PFN_ERR_HWPOISON) {
 		if (is_vm_hugetlb_page(vma))
@@ -563,6 +686,9 @@ int kvm_riscv_stage2_map(struct kvm_vcpu *vcpu, gpa_t g=
pa, unsigned long hva,
=20
 	spin_lock(&kvm->mmu_lock);
=20
+	if (mmu_notifier_retry(kvm, mmu_seq))
+		goto out_unlock;
+
 	if (writeable) {
 		kvm_set_pfn_dirty(hfn);
 		ret =3D stage2_map_page(kvm, pcache, gpa, hfn << PAGE_SHIFT,
@@ -575,6 +701,7 @@ int kvm_riscv_stage2_map(struct kvm_vcpu *vcpu, gpa_t g=
pa, unsigned long hva,
 	if (ret)
 		kvm_err("Failed to map in stage2\n");
=20
+out_unlock:
 	spin_unlock(&kvm->mmu_lock);
 	kvm_set_pfn_accessed(hfn);
 	kvm_release_pfn_clean(hfn);
diff --git a/arch/riscv/kvm/vm.c b/arch/riscv/kvm/vm.c
index c5aab5478c38..fd84b4d914dc 100644
--- a/arch/riscv/kvm/vm.c
+++ b/arch/riscv/kvm/vm.c
@@ -54,6 +54,7 @@ int kvm_vm_ioctl_check_extension(struct kvm *kvm, long ex=
t)
 	switch (ext) {
 	case KVM_CAP_DEVICE_CTRL:
 	case KVM_CAP_USER_MEMORY:
+	case KVM_CAP_SYNC_MMU:
 	case KVM_CAP_DESTROY_MEMORY_REGION_WORKS:
 	case KVM_CAP_ONE_REG:
 	case KVM_CAP_READONLY_MEM:
--=20
2.17.1


