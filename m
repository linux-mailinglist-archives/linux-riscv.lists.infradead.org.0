Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 69590E08AB
	for <lists+linux-riscv@lfdr.de>; Tue, 22 Oct 2019 18:22:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Uxa4bplExf1Ne+ltVrdmuBlJbACxf39HKX17PZ7yzL8=; b=Km47St14O1rNY4
	GYDZt6YnFbAIfzogUo22ZICAq/3ZGGbTpX0LGnvb3E4NSyvEOzlNThawG5wEaf1UKRCkYtF211gZ4
	bM80mucXxJnMNe0eCC/tXVPKsqkrhS3rdPbUDIF4XA65varv6Gn8YPfEW+fm6vslmRi6+GfQmqrOX
	ZQw3niBVafC3t6TcQ0nWZ3dEfWvRozVF4xs9glDgqouihSPal6RRgyuSjQDlnJP916cmDpszFmxTl
	m6Vm/Gce3MVFhXu+oQcsE51iUReVElGNInfAk6geAXolMBYFVImCdca+Ubi9oH0s6+CC/uA8mvKse
	WDZomlGoNnFo2L2sxqgQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMwv3-0006bc-Fb; Tue, 22 Oct 2019 16:22:01 +0000
Received: from mail-lj1-x244.google.com ([2a00:1450:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMwuz-0006aR-G3
 for linux-riscv@lists.infradead.org; Tue, 22 Oct 2019 16:21:58 +0000
Received: by mail-lj1-x244.google.com with SMTP id y3so17868850ljj.6
 for <linux-riscv@lists.infradead.org>; Tue, 22 Oct 2019 09:21:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=WAmIOUJQL3AqxKJr+gmH9vSIN+RyG3cvJyazjbmRq6M=;
 b=FYSzsZifEEp6JUGLe9YbQHgByfHvJTEvCS5RxjeXhl/zcBa47wVJk1Nd4vV5ZQGNGc
 +vnOqM8BLGBLLq3HuTODGzsGjjhMNa0xdHy0Zzv/2nk9cvP9IIz9zFQkM7AZp/kHbEZI
 oB6/JlnMH4hUJUg91uswK28Eh6gIvn49ZJ2nMHtbGz8au+3vSHt7jjoKq2KXfEni4JsG
 4FAkYIvjnr6ehHLZzZxMYaQvmoHa8DK2BlegJoySoEVdnyAclyJg5xnWhXAu1TxBdAQZ
 A7pTEq6TgM0TwBGHw4BraQmffd/NjtlHtl5Eit6Qs6pErs4gtnxBOua4OhbPhVhGw+IZ
 oZQQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=WAmIOUJQL3AqxKJr+gmH9vSIN+RyG3cvJyazjbmRq6M=;
 b=gloB3WGtHVpn759ZUs586RKWABI7obe1UbaPY0U7h6sJHGL554SKQ9vz1GXh2SjUzp
 H2w7ZLDyc1qkG2SN0LoWvTEJytwc4dTB0cI8RXb/LhK/ImbNJzGlESqIkT1gaWHRMwD8
 0f5xGU238zm45nfpcs5UipR68+dxTvrCHweQLEFH6zTF2ChFl7IqjlSM5DblHtvdiFjn
 fyhmiCH9frExXkJw4dq6pfiLRpDcWLW7relouU/kxataM5f0Q75ChZF8RZTy2wtHfL/Z
 CLFVimaykSsujhhepJf7bLQ7Iz1imD+T1/oCXK/x2em6NvT2nHBtIO2QUys8a8s1c5us
 UlqA==
X-Gm-Message-State: APjAAAW74vth1XXKt3B/LFfwoLPf+lXdDArOWnlxcwpI5OD0ujn4x1ZZ
 73inDr56YlbQ+/KT/2sz0CI=
X-Google-Smtp-Source: APXvYqzFVOA6vzn1dAYsPMSZHUGU2XqqWVZIWewYHpxeG9rkDjgIvYd4LBvQMuL6lLiozIMmwnMSbw==
X-Received: by 2002:a2e:7404:: with SMTP id p4mr6605735ljc.47.1571761315303;
 Tue, 22 Oct 2019 09:21:55 -0700 (PDT)
Received: from localhost.localdomain (78-63-27-146.static.zebra.lt.
 [78.63.27.146])
 by smtp.gmail.com with ESMTPSA id o13sm7595118ljh.35.2019.10.22.09.21.53
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 22 Oct 2019 09:21:54 -0700 (PDT)
From: David Abdurachmanov <david.abdurachmanov@gmail.com>
X-Google-Original-From: David Abdurachmanov <david.abdurachmanov@sifive.com>
To: Paul Walmsley <paul.walmsley@sifive.com>,
 Palmer Dabbelt <palmer@sifive.com>, Albert Ou <aou@eecs.berkeley.edu>,
 Anup Patel <Anup.Patel@wdc.com>, Mike Rapoport <rppt@linux.ibm.com>,
 Greentime Hu <greentime.hu@sifive.com>,
 "Stefan O'Rear" <sorear2@gmail.com>,
 David Abdurachmanov <david.abdurachmanov@sifive.com>,
 Alexandre Ghiti <alex@ghiti.fr>, Logan Gunthorpe <logang@deltatee.com>,
 Thomas Gleixner <tglx@linutronix.de>, linux-riscv@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH] riscv: fix fs/proc/kcore.c compilation with sparsemem enabled
Date: Tue, 22 Oct 2019 19:21:35 +0300
Message-Id: <20191022162136.19076-1-david.abdurachmanov@sifive.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191022_092157_560065_A8B69A32 
X-CRM114-Status: UNSURE (   9.44  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:244 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (david.abdurachmanov[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: david.abdurachmanov@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Failed to compile Fedora/RISCV kernel (5.4-rc3+) with sparsemem enabled:

fs/proc/kcore.c: In function 'read_kcore':
fs/proc/kcore.c:510:8: error: implicit declaration of function 'kern_addr_valid'; did you mean 'virt_addr_valid'? [-Werror=implicit-function-declaration]
  510 |    if (kern_addr_valid(start)) {
      |        ^~~~~~~~~~~~~~~
      |        virt_addr_valid

Looking at other architectures I don't see kern_addr_valid being guarded by
CONFIG_FLATMEM.

Fixes: d95f1a542c3d ("RISC-V: Implement sparsemem")
Signed-off-by: David Abdurachmanov <david.abdurachmanov@sifive.com>
Tested-by: David Abdurachmanov <david.abdurachmanov@sifive.com>
---
 arch/riscv/include/asm/pgtable.h | 2 --
 1 file changed, 2 deletions(-)

diff --git a/arch/riscv/include/asm/pgtable.h b/arch/riscv/include/asm/pgtable.h
index 42292d99cc74..7110879358b8 100644
--- a/arch/riscv/include/asm/pgtable.h
+++ b/arch/riscv/include/asm/pgtable.h
@@ -428,9 +428,7 @@ static inline int ptep_clear_flush_young(struct vm_area_struct *vma,
 #define __pte_to_swp_entry(pte)	((swp_entry_t) { pte_val(pte) })
 #define __swp_entry_to_pte(x)	((pte_t) { (x).val })
 
-#ifdef CONFIG_FLATMEM
 #define kern_addr_valid(addr)   (1) /* FIXME */
-#endif
 
 extern void *dtb_early_va;
 extern void setup_bootmem(void);
-- 
2.21.0


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
