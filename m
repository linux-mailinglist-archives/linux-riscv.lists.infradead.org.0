Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 32755DBB08
	for <lists+linux-riscv@lfdr.de>; Fri, 18 Oct 2019 02:50:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3G793/eSgBZ6BC6j++9eaFZnQD1JmoyBMSYmq1v5tZk=; b=KN9ygLuph6HkUv
	8wxG978hP8y9tLXVN+zfKp6IwG3uOukET4dQ3ImzXxcNjUE21s/IlX3P5a2ZB7BVfWeKTp3DiEzyE
	OyxjSVhE7898hfN7NbDts3BgMZ4GSZHv6okloqe6CM0z3Kp1W8OEA82dOEfC1fM8Mu+0MUO8VKCQw
	5Bbgxll85qtMvUzYeetAS/9Dkfy02r5pfwiimaVMWBinXeW8AsimkCUtZ3IE4RCytFWBiic7pMReM
	RGVTcm1yXRmFRzDXTmGaZLDySj8LxxyvnwcWuir+OOybbYGyPGVTyl4vAB3XMvfw/Q9q4S4S7t2nb
	vlSCRWkrFp7MzPygp5qA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iLGSu-00033r-KG; Fri, 18 Oct 2019 00:50:00 +0000
Received: from mail-il1-x143.google.com ([2607:f8b0:4864:20::143])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iLGSo-0002x6-LW
 for linux-riscv@lists.infradead.org; Fri, 18 Oct 2019 00:49:56 +0000
Received: by mail-il1-x143.google.com with SMTP id z10so3931964ilo.8
 for <linux-riscv@lists.infradead.org>; Thu, 17 Oct 2019 17:49:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Fja9Gt2B2/DBj4SCSTf44z+mXpP45MXj3+t8BNYs+ic=;
 b=cEtvxQFb6Wq310iPciXVgojndV2bclFUO+ObVlogs2+0qitTmU0a1m3cCj+69z9HYQ
 c1cKLE0d4qBkVBQTVu9uL+fbRXh70eiIyrt4lI8EHOdpssngWDrt5lVpRPhCwWz3vdCO
 FHVKdKL4eNBtCX2R6sAo5oq8f+fNAICzCjSa2W1fPVbgehN6xvcXIEt/14F9rOtMnxxF
 eG6jNz37+PJ9sn2ZO9G1T/B///TzwQvmYzqKJEyHjmziNymtMfVY5ueDdR31rq387Hu5
 rP2XAc2+icZEuyKdnWiPyYdUScxT4YuTQmjTfuBoW+9rPseXZ2Nh4wPf1yuhTnZYPPZU
 UV+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Fja9Gt2B2/DBj4SCSTf44z+mXpP45MXj3+t8BNYs+ic=;
 b=e2Dd8BXM0UBpAZkbKBvi7DXADS5iBq1S8lt3EhasBlv8hQq/2AlFKmkwF67fVTMeoR
 tkVA2WlEUZzcneGfgv7b6NrhQ3DEL5Q8VdmYHwIcXBgAJ3mlUYuhJcbg92+KgBuTsANl
 qb33hYxStTZpcHiyWFWapXvD9UVeUOPnlvYfzunNsGB7PZxdcnqHc1kMbjVX4TNDCTcb
 +5jwBFqQCd6nc0TwJMzorTN6QbfyKP44z1Zqpa7nk7Ez7Ea0z5IA9n8wQE1rdldVqa5o
 rdHQfSNbB9N6hhSHFcoNUV4wWkXLQJtBW3ycz4xI5w8azyKAaLRn4/Re+4Fup7IxlJlk
 mg4A==
X-Gm-Message-State: APjAAAWX01WVPB76fi8hOjFdDsMkSWVc1HyjSW08dea2CTa6+3ajspM/
 aIRywOSEFmOpijtQQRUNY/9EVjAB+hI=
X-Google-Smtp-Source: APXvYqz1+jP5/P6UwcpWfctwKEvC91RjkSu+uplBMR8C/0xEP1mUNR9mhUV1bfxIW/s/E0pjZ9Asew==
X-Received: by 2002:a92:dd88:: with SMTP id g8mr7007262iln.221.1571359792718; 
 Thu, 17 Oct 2019 17:49:52 -0700 (PDT)
Received: from viisi.Home ([64.62.168.194])
 by smtp.gmail.com with ESMTPSA id z20sm1493891iof.38.2019.10.17.17.49.51
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 17 Oct 2019 17:49:52 -0700 (PDT)
From: Paul Walmsley <paul.walmsley@sifive.com>
To: linux-riscv@lists.infradead.org
Subject: [PATCH 3/8] riscv: init: merge split string literals in preprocessor
 directive
Date: Thu, 17 Oct 2019 17:49:24 -0700
Message-Id: <20191018004929.3445-4-paul.walmsley@sifive.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191018004929.3445-1-paul.walmsley@sifive.com>
References: <20191018004929.3445-1-paul.walmsley@sifive.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191017_174954_718560_A131DB62 
X-CRM114-Status: GOOD (  11.80  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:143 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

sparse complains loudly when string literals associated with
preprocessor directives are split into multiple, separately quoted
strings across different lines:

arch/riscv/mm/init.c:341:9: error: Expected ; at the end of type declaration
arch/riscv/mm/init.c:341:9: error: got "not use absolute addressing."
arch/riscv/mm/init.c:358:9: error: Trying to use reserved word 'do' as identifier
arch/riscv/mm/init.c:358:9: error: Expected ; at end of declaration
[ ... ]

The compiler doesn't seem to mind the split string literal, but it's
pretty ugly to my eyes - enough to outweigh the value of the 80-column
warning from checkpatch.  Fix by concatenating the strings.

This patch should have no functional impact.

Signed-off-by: Paul Walmsley <paul.walmsley@sifive.com>
---
 arch/riscv/mm/init.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/arch/riscv/mm/init.c b/arch/riscv/mm/init.c
index fa8748a74414..fe68e94ea946 100644
--- a/arch/riscv/mm/init.c
+++ b/arch/riscv/mm/init.c
@@ -339,8 +339,7 @@ static uintptr_t __init best_map_size(phys_addr_t base, phys_addr_t size)
  */
 
 #ifndef __riscv_cmodel_medany
-#error "setup_vm() is called from head.S before relocate so it should "
-	"not use absolute addressing."
+#error "setup_vm() is called from head.S before relocate so it should not use absolute addressing."
 #endif
 
 asmlinkage void __init setup_vm(uintptr_t dtb_pa)
-- 
2.23.0


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
