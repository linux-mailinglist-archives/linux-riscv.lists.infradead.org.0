Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1313A136B43
	for <lists+linux-riscv@lfdr.de>; Fri, 10 Jan 2020 11:46:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:MIME-Version:Content-Type:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=LhPJp+PAwva7bPHMH862TV/8J9fNaEOj4YyHAq59Kg8=; b=kJJ3V2eSJ2WPRGMDOiRRix35u
	HmGowIre/zKCNseqQkYGBxfJy7v/RkT86byIx6Y1J2SRAg+gnRkHeZepQKRe1KYTpH6SPRMZsmDxE
	Z36Lw6O6FxYwc3Rjryuiruf7dIA6hYuBEnx1MhVLg72x1h0HB2FlWEyzdyVloxWYD6IglfJ9KL7Zf
	zJ5rqTmEoqNs9Nuaybxd7aseiW30JJfK5Oy9PDlQdDPqa5r+q4MGzstf3z7bJGakIaRPzyekTGfZq
	DxZKKy6gviCkC6PmOjKzS6Op24g9KHlas+sYnSwx0cc0zqb7tQ/MH4reqi1ZX3MxRUKg1vthvXoMq
	zVxqouRPg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iproR-0007MA-4D; Fri, 10 Jan 2020 10:46:43 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iproM-0007K6-Jr
 for linux-riscv@lists.infradead.org; Fri, 10 Jan 2020 10:46:40 +0000
Received: by mail-pl1-x642.google.com with SMTP id az3so699296plb.11
 for <linux-riscv@lists.infradead.org>; Fri, 10 Jan 2020 02:46:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=from:to:subject:date:message-id:in-reply-to:references:in-reply-to
 :references; bh=LhPJp+PAwva7bPHMH862TV/8J9fNaEOj4YyHAq59Kg8=;
 b=JcJvFnOkAVeVV9XrhUVdhbhf5yYoi7T7LuWmU1eyQuEIS8cjao55ztp8J2hmKsZERu
 7ySGrS8OoHgH0Aw5tYKzVadcXyLU2DVpBAMKYuF0TTn1BFOSbg8vdTs9/3iqdDc65XQs
 c6IjGBNIzk8C7jGJoIKOKNqfpuNH2po2onG67zoY2sT7UhFn3elCxWo0HZBvadCoTFju
 c8Sc12UpEskHnz74klkv9hrvvPkl2rDeatvyWYcMC5p1ySBjVa3DKhA/1ieYK0RZZ3O2
 jP2RjSE9Ib8CJCB9rgZxE8OfMsetjRgBjGzorTj6U7vi4i8D2ucgJd/K7Ec9B0L5fA86
 8T+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:in-reply-to:references;
 bh=LhPJp+PAwva7bPHMH862TV/8J9fNaEOj4YyHAq59Kg8=;
 b=jdhVi/TnSYD33HPEA+pGuhw1eaRWXIybdInrstJ3/B7yRK9Oxmkd5hDCYNdZtT4aBX
 ChNT1VbhqcpIbEXS/arsblNqtjiVhS3tuxvhktk82q9KiroDKtxKqeTv9T3OjN8NUjYI
 nYtjEcPXOmNbPlTXkkWmNp1xhDizlVJ2dHnio+1btC1tNGKahjovAVkqPVkNLdcZzUDX
 m7qmeHD9amQF9vEHrkASH6sYERa27nTopOE5VboZyAIXHxb8fEDRsV8qmD241m8ouNmI
 YAISX9jc6yNn3ZSZEqkx7NwlFk4dQJfa74aF7fUhIv5uWwjPhSy4AsTIa1pgIReXeD7p
 Pnbg==
X-Gm-Message-State: APjAAAWJK+bULeMfGx5b5i0CocDLDRRh1mi8GwCMMvVtJHf+JGLgl5Xw
 9A3yDvnuJ9UgOOV+Vngut5McRA==
X-Google-Smtp-Source: APXvYqxvFezduVV4IwfVnEBIdXpJcuKRSwEUMeh6oea69WBD3hgikon+ZODyeGzzks3V+W+ht/b4MQ==
X-Received: by 2002:a17:90a:ac0f:: with SMTP id
 o15mr3859733pjq.133.1578653198083; 
 Fri, 10 Jan 2020 02:46:38 -0800 (PST)
Received: from greentime-VirtualBox.internal.sifive.com
 (220-132-236-182.HINET-IP.hinet.net. [220.132.236.182])
 by smtp.gmail.com with ESMTPSA id e10sm2590901pfj.7.2020.01.10.02.46.35
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 10 Jan 2020 02:46:37 -0800 (PST)
From: Greentime Hu <greentime.hu@sifive.com>
To: greentime.hu@sifive.com, greentime@kernel.org, anup@brainfault.org,
 palmer@dabbelt.com, linux-riscv@lists.infradead.org,
 linux-kernel@vger.kernel.org, rppt@linux.ibm.com, gkulkarni@marvell.com,
 will@kernel.org, catalin.marinas@arm.com, mark.rutland@arm.com,
 paul.walmsley@sifive.com, hch@lst.de
Subject: [RFC PATCH v2 1/4] riscv: Add support pte_protnone and pmd_protnone
 if CONFIG_NUMA_BALANCING
Date: Fri, 10 Jan 2020 18:46:24 +0800
Message-Id: <1ff7e57f16cb43c8816b90716a872b8f0f101c42.1577694824.git.greentime.hu@sifive.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <cover.1577694824.git.greentime.hu@sifive.com>
References: <cover.1577694824.git.greentime.hu@sifive.com>
In-Reply-To: <cover.1577694824.git.greentime.hu@sifive.com>
References: <cover.1577694824.git.greentime.hu@sifive.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200110_024638_649464_C6A6EE3E 
X-CRM114-Status: UNSURE (   7.68  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:642 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

These two functions are used to distinguish between PROT_NONENUMA
protections and hinting fault protections.

Signed-off-by: Greentime Hu <greentime.hu@sifive.com>
---
 arch/riscv/include/asm/pgtable.h | 20 ++++++++++++++++++++
 1 file changed, 20 insertions(+)

diff --git a/arch/riscv/include/asm/pgtable.h b/arch/riscv/include/asm/pgtable.h
index 36ae01761352..9650a4ce073e 100644
--- a/arch/riscv/include/asm/pgtable.h
+++ b/arch/riscv/include/asm/pgtable.h
@@ -166,6 +166,11 @@ static inline unsigned long pmd_page_vaddr(pmd_t pmd)
 	return (unsigned long)pfn_to_virt(pmd_val(pmd) >> _PAGE_PFN_SHIFT);
 }
 
+static inline pte_t pmd_pte(pmd_t pmd)
+{
+	return __pte(pmd_val(pmd));
+}
+
 /* Yields the page frame number (PFN) of a page table entry */
 static inline unsigned long pte_pfn(pte_t pte)
 {
@@ -279,6 +284,21 @@ static inline pte_t pte_mkhuge(pte_t pte)
 	return pte;
 }
 
+#ifdef CONFIG_NUMA_BALANCING
+/*
+ * See the comment in include/asm-generic/pgtable.h
+ */
+static inline int pte_protnone(pte_t pte)
+{
+	return (pte_val(pte) & (_PAGE_PRESENT | _PAGE_PROT_NONE)) == _PAGE_PROT_NONE;
+}
+
+static inline int pmd_protnone(pmd_t pmd)
+{
+	return pte_protnone(pmd_pte(pmd));
+}
+#endif
+
 /* Modify page protection bits */
 static inline pte_t pte_modify(pte_t pte, pgprot_t newprot)
 {
-- 
2.17.1


