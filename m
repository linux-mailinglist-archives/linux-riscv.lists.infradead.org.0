Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 03BCBB66BD
	for <lists+linux-riscv@lfdr.de>; Wed, 18 Sep 2019 17:08:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:
	MIME-Version:References:Message-ID:In-Reply-To:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=pEcAgeSixENLng+c4XnWcuVLttfy70BFIhGZKmp1Kes=; b=TEdb4flJT3ufyfiJkVPAMAhfh
	WQdW9WN+iyEkhGyfAjCG9YtNEwVe2j5GDh86mCWjfU1iaVUoNisCYadiR365GdUg7toiwm43cGo5i
	a0gyiEqYVsvMnC+TsSLSpc4fLmIdY3lEDtim02uReBa/o1578N9I4SYuM99A/Gk2G2yIisVOqbqcA
	ZCPDk//kl5rhmA3RD+bPwFhhKBS1qaObFvOd7LtxswgtB8cFyvgMRextAxJ+n/oUkJERdGI1NXgPx
	wn9UHBwdrX6APxfx9PjoSRf9aeSux2oQnsX45nwuwZswqVHJQZGB+pwOe1mvqMapX22g5VJBvYsn0
	I1yGO8ocg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAbZ4-000213-5b; Wed, 18 Sep 2019 15:08:18 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAbYz-00020a-MV
 for linux-riscv@lists.infradead.org; Wed, 18 Sep 2019 15:08:15 +0000
Received: by mail-wr1-x443.google.com with SMTP id l3so7298452wru.7
 for <linux-riscv@lists.infradead.org>; Wed, 18 Sep 2019 08:08:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=date:from:to:cc:subject:in-reply-to:message-id:references
 :user-agent:mime-version;
 bh=ZHorGm2MuyyGCvKnYrvMqsguI6FU0r6Y2tWoWqD8t48=;
 b=KmopZsfO0DLvPQQ41CYF1GC8GFYQ4oL214i1x8VV1ehxS6300Hwy0JLXi2aK35B3/A
 82WZWek/QRLMAmOq6375s+h9VX595MKp7aKizeki7Mai8yzzykji5tWAs0aM7S6/GIOP
 WmIWwvlbs+5XJgRjxkR7usL1BJu7IlFXSKl/s/plpK6b6O9Cih3pXNwDjBqZkKtX7PaF
 7X7vRoxL8iv6TUhEovuYg9bSGYudFydeT0kyKO7bNkcOCX2tP+VXa6AgqoKD4w9BfP0J
 L81aLMaQhnvx/T36HdH/BD5rHmkiiUUjhcqgeXxKfIzoAMBwKEuwLctkOBBoE1X1JJwz
 nlzA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:in-reply-to:message-id
 :references:user-agent:mime-version;
 bh=ZHorGm2MuyyGCvKnYrvMqsguI6FU0r6Y2tWoWqD8t48=;
 b=PI+cPKPX/UZ3VSeeYJe3Un5y48YnvTWNmB+pMF740kb5fRgpPTJdOoGCQrS0WQzx3w
 FRt6T6irs4L53TF0D3rhQniFRdZzvwXS0cafPB80t9ZLzkaEzo9ZOBtFU4gkF3YLsKcy
 UJU3LyHnhRi++dh7t5HlkhjiKDKUu6sFqghHyieE+Ax2t3K13SCgATPDM9inbM8VmKU+
 QdPxXtSOoW+twoC5N6U9lTElJEw2nWMvc3781rLQgQ6dRt3H5SFZcwVUPUyOSb7Hd0QI
 RhKF1LYa8bUdSWc9/qnSFECuTNAwxtyI+IiksYxVJVOf6T/sQzTAYY7g1r3Mt8wVOh0X
 F0Eg==
X-Gm-Message-State: APjAAAXEhvMNJTU3IaISS7eSceW+DpkRJmIFx1rwlb6NYzGGWdXr+E5J
 1XlSg1hdeGQ7/MEutkEKabf5Aw==
X-Google-Smtp-Source: APXvYqxikggtthBynFvBdM6RFvgeSlc79Un78tPLbHaiowsQsBeHrMPReEdaJo26DwccO9KlAioQzQ==
X-Received: by 2002:adf:e48a:: with SMTP id i10mr3434964wrm.311.1568819292364; 
 Wed, 18 Sep 2019 08:08:12 -0700 (PDT)
Received: from localhost ([195.200.173.126])
 by smtp.gmail.com with ESMTPSA id m16sm2042728wml.11.2019.09.18.08.08.11
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 18 Sep 2019 08:08:11 -0700 (PDT)
Date: Wed, 18 Sep 2019 08:08:10 -0700 (PDT)
From: Paul Walmsley <paul.walmsley@sifive.com>
X-X-Sender: paulw@viisi.sifive.com
To: greentime.hu@sifive.com
Subject: Re: [PATCH] RISC-V: Fix building error when CONFIG_SPARSEMEM_MANUAL=y
In-Reply-To: <20190918103825.8694-1-greentime.hu@sifive.com>
Message-ID: <alpine.DEB.2.21.9999.1909180806310.13446@viisi.sifive.com>
References: <20190918103825.8694-1-greentime.hu@sifive.com>
User-Agent: Alpine 2.21.9999 (DEB 301 2018-08-15)
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="8323329-2123992612-1568819290=:13446"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190918_080813_769078_4E95FBF7 
X-CRM114-Status: GOOD (  11.83  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
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
Cc: linux-hackers@sifive.com, linux-riscv@lists.infradead.org,
 palmer@sifive.com, green.hu@gmail.com, linux-kernel@vger.kernel.org
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--8323329-2123992612-1568819290=:13446
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: QUOTED-PRINTABLE

On Wed, 18 Sep 2019, greentime.hu@sifive.com wrote:

> From: Greentime Hu <greentime.hu@sifive.com>
>=20
> To adjust the place of VMALLOC_* and FIXADDR_* defined location to let VM=
EMMAP_*
> get it.
>=20
>   CC      init/main.o
> In file included from ./include/linux/mm.h:99,
>                  from ./include/linux/ring_buffer.h:5,
>                  from ./include/linux/trace_events.h:6,
>                  from ./include/trace/syscall.h:7,
>                  from ./include/linux/syscalls.h:85,
>                  from init/main.c:21:
> ./arch/riscv/include/asm/pgtable.h: In function =E2=80=98pmd_page=E2=80=
=99:
> ./arch/riscv/include/asm/pgtable.h:95:24: error: =E2=80=98VMALLOC_START=
=E2=80=99 undeclared (first use in this function); did you mean =E2=80=98VM=
EMMAP_START=E2=80=99?
>  #define VMEMMAP_START (VMALLOC_START - VMEMMAP_SIZE)
>                         ^~~~~~~~~~~~~
>=20
> Fixes: d95f1a542c3d ("RISC-V: Implement sparsemem")
> Signed-off-by: Greentime Hu <greentime.hu@sifive.com>

Thanks, queued the following for v5.4-rc.


- Paul

From: Greentime Hu <greentime.hu@sifive.com>
Date: Wed, 18 Sep 2019 18:38:24 +0800
Subject: [PATCH] RISC-V: Fix building error when CONFIG_SPARSEMEM_MANUAL=3D=
y

Fix a build break by adjusting where VMALLOC_* and FIXADDR_* are
defined.  This fixes the definition of the MEMMAP_* macros.

  CC      init/main.o
In file included from ./include/linux/mm.h:99,
                 from ./include/linux/ring_buffer.h:5,
                 from ./include/linux/trace_events.h:6,
                 from ./include/trace/syscall.h:7,
                 from ./include/linux/syscalls.h:85,
                 from init/main.c:21:
=2E/arch/riscv/include/asm/pgtable.h: In function =E2=80=98pmd_page=E2=80=
=99:
=2E/arch/riscv/include/asm/pgtable.h:95:24: error: =E2=80=98VMALLOC_START=
=E2=80=99 undeclared (first use in this function); did you mean =E2=80=98VM=
EMMAP_START=E2=80=99?
 #define VMEMMAP_START (VMALLOC_START - VMEMMAP_SIZE)
                        ^~~~~~~~~~~~~

Fixes: d95f1a542c3d ("RISC-V: Implement sparsemem")
Signed-off-by: Greentime Hu <greentime.hu@sifive.com>
[paul.walmsley@sifive.com: fix patch description]
Signed-off-by: Paul Walmsley <paul.walmsley@sifive.com>
---
 arch/riscv/include/asm/pgtable.h | 24 ++++++++++++------------
 1 file changed, 12 insertions(+), 12 deletions(-)

diff --git a/arch/riscv/include/asm/pgtable.h b/arch/riscv/include/asm/pgta=
ble.h
index 80905b27ee98..4f4162d90586 100644
--- a/arch/riscv/include/asm/pgtable.h
+++ b/arch/riscv/include/asm/pgtable.h
@@ -83,6 +83,18 @@ extern pgd_t swapper_pg_dir[];
 #define __S110=09PAGE_SHARED_EXEC
 #define __S111=09PAGE_SHARED_EXEC
=20
+#define VMALLOC_SIZE     (KERN_VIRT_SIZE >> 1)
+#define VMALLOC_END      (PAGE_OFFSET - 1)
+#define VMALLOC_START    (PAGE_OFFSET - VMALLOC_SIZE)
+
+#define FIXADDR_TOP      VMALLOC_START
+#ifdef CONFIG_64BIT
+#define FIXADDR_SIZE     PMD_SIZE
+#else
+#define FIXADDR_SIZE     PGDIR_SIZE
+#endif
+#define FIXADDR_START    (FIXADDR_TOP - FIXADDR_SIZE)
+
 /*
  * Roughly size the vmemmap space to be large enough to fit enough
  * struct pages to map half the virtual address space. Then
@@ -429,18 +441,6 @@ static inline void pgtable_cache_init(void)
 =09/* No page table caches to initialize */
 }
=20
-#define VMALLOC_SIZE     (KERN_VIRT_SIZE >> 1)
-#define VMALLOC_END      (PAGE_OFFSET - 1)
-#define VMALLOC_START    (PAGE_OFFSET - VMALLOC_SIZE)
-
-#define FIXADDR_TOP      VMALLOC_START
-#ifdef CONFIG_64BIT
-#define FIXADDR_SIZE     PMD_SIZE
-#else
-#define FIXADDR_SIZE     PGDIR_SIZE
-#endif
-#define FIXADDR_START    (FIXADDR_TOP - FIXADDR_SIZE)
-
 /*
  * Task size is 0x4000000000 for RV64 or 0x9fc00000 for RV32.
  * Note that PGDIR_SIZE must evenly divide TASK_SIZE.
--=20
2.23.0

--8323329-2123992612-1568819290=:13446
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv

--8323329-2123992612-1568819290=:13446--

