Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 62B621F3DB8
	for <lists+linux-riscv@lfdr.de>; Tue,  9 Jun 2020 16:15:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:MIME-Version:
	Content-Type:Content-Transfer-Encoding:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=axTX3bDFHDoqUFzRd8kt4CjTEfuPtBC5Y1xc/K/Twe8=; b=BhlYbQoeron2Rt
	4hnsJF/BtE/uz5fdOmOYGrkNUXcPbK4tEBw8vyNiIYEM6yW1IRoquW9+F5xG4VQy4RH8hMzt61AA4
	+MeRYpGcTRtcEVUcn+TI0DrgK7AKf4p0BIkOX985fcqeiKCIQtS4W5l+CCIpZXCuXjo2yeHxP0SSm
	+3xFvArJrVQnYwDNckUTg6C7YZGXJc4waL3hD1dmwEIv2Iy3Yc4Xte8z0rJGF7EJUQTyF+wqzJlbl
	0KCt2qRVFFDnsPL/4fJ1gWGfL9rbit8o4qxfCvfNUed5G0pSy4SeXrNM/ej2CerW5q1xl+soo2LbH
	Nv80dUZkHtmUcMIWFagg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jif2H-0002wo-Uw; Tue, 09 Jun 2020 14:15:29 +0000
Received: from mail-pj1-x1042.google.com ([2607:f8b0:4864:20::1042])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jif1z-0001Ta-VZ
 for linux-riscv@lists.infradead.org; Tue, 09 Jun 2020 14:15:19 +0000
Received: by mail-pj1-x1042.google.com with SMTP id k2so1465780pjs.2
 for <linux-riscv@lists.infradead.org>; Tue, 09 Jun 2020 07:15:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=axTX3bDFHDoqUFzRd8kt4CjTEfuPtBC5Y1xc/K/Twe8=;
 b=fPMPdhKm8gqacaRvpGoxeBhw5HO5IwMYWOwWlvWUUHRRqboKaD79UeJ9VzO17k1hbZ
 kllzbOfK2Ub8pd4kvZU4EGV2TRR5zV+2sLLfK1dwepBT1p7FUTGnQ6soPMMReV8r5FZ3
 5k5WoWcPjPGThu7TViG1zJIgDDTWYnx3L1nB/LPZM/DN28XbCdXGzst90yqvzTM/t7H2
 lI4tX+tj+oZtSVjYt3Dv22T1WHTCXo5g0pMMWnVc6l2L/uDEnk6x3F5+tZjpLodzgwhy
 l3QaYsKxxFFlmo0gLm/nmUdv5Z1OCdZDq7L4L4kgYk2TqK+HmP7zU6BHqFC9beTcfVBg
 zZFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=axTX3bDFHDoqUFzRd8kt4CjTEfuPtBC5Y1xc/K/Twe8=;
 b=k4d3cGAepQ8agwmAN2VV1CFQRVXTb2aUrA3s1HskVFi+HD5xKUWscFkkgKySOMKckV
 uQ4uIXXZlGIRlUfPNSx2ZMkRAr0LoV9D+0b4fyVS2tawfJxOr1gbCWHzyQcwBKauDZDR
 yMHhHHikuLc9opcixtPiYEhCTID/SD72NhgB9+/AAxG30dTAR1CTM+ib14amXBH289IR
 yd/Vbe2HtmSNndc/Dq39noIgWiqoQ+qzyJbmVp9Gdpy/bKC3/eOL0KLkKy6UYjuQ0ojg
 dZiaXoVD3iTpGXMgnkxyDNVKDW9I2EuA28YFgrMfXH78CET/HY9uxEygeJNixNzwU+6n
 w2JQ==
X-Gm-Message-State: AOAM531SdUG4MGaqNWEYhg/Aiz1dL58Gfsvsn7VtBCicnIcGHq/Fbt6o
 A3iCgVmZS7sQXLc1MwPOkKLTbg==
X-Google-Smtp-Source: ABdhPJwzJ8GNtMpGry/qf1rt4GHiO+H2/ljeI3wpwUzzuKUYoTm+N+FziHx/zt0j25F5oLeoSG4FdA==
X-Received: by 2002:a17:90b:f09:: with SMTP id
 br9mr4776931pjb.168.1591712110808; 
 Tue, 09 Jun 2020 07:15:10 -0700 (PDT)
Received: from localhost.localdomain (123-195-35-41.dynamic.kbronet.com.tw.
 [123.195.35.41])
 by smtp.gmail.com with ESMTPSA id c9sm10271531pfp.100.2020.06.09.07.15.09
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 09 Jun 2020 07:15:10 -0700 (PDT)
From: Vincent Chen <vincent.chen@sifive.com>
To: palmer@dabbelt.com,
	paul.walmsley@sifive.com
Subject: [PATCH v4 2/2] riscv: set the permission of vdso_data to read-only
Date: Tue,  9 Jun 2020 22:14:49 +0800
Message-Id: <1591712089-12904-3-git-send-email-vincent.chen@sifive.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1591712089-12904-1-git-send-email-vincent.chen@sifive.com>
References: <1591712089-12904-1-git-send-email-vincent.chen@sifive.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200609_071512_042041_7A060B32 
X-CRM114-Status: GOOD (  11.16  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:1042 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Vincent Chen <vincent.chen@sifive.com>, linux-riscv@lists.infradead.org,
 Palmer Dabbelt <palmerdabbelt@google.com>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

The original vdso_data page is empty, so the permission of the vdso_data
page can be the same with the vdso text page. After introducing the vDSO
common flow, the vdso_data is not empty and the permission should be
changed to read-only.

Signed-off-by: Vincent Chen <vincent.chen@sifive.com>
Signed-off-by: Palmer Dabbelt <palmerdabbelt@google.com>
---
 arch/riscv/kernel/vdso.c | 16 ++++++++++++++--
 1 file changed, 14 insertions(+), 2 deletions(-)

diff --git a/arch/riscv/kernel/vdso.c b/arch/riscv/kernel/vdso.c
index 70b6461a6387..94450332aa4f 100644
--- a/arch/riscv/kernel/vdso.c
+++ b/arch/riscv/kernel/vdso.c
@@ -79,13 +79,22 @@ int arch_setup_additional_pages(struct linux_binprm *bprm,
 	 */
 	mm->context.vdso = (void *)vdso_base;
 
-	ret = install_special_mapping(mm, vdso_base, vdso_len,
+	ret =
+	   install_special_mapping(mm, vdso_base, vdso_pages << PAGE_SHIFT,
 		(VM_READ | VM_EXEC | VM_MAYREAD | VM_MAYWRITE | VM_MAYEXEC),
 		vdso_pagelist);
 
-	if (unlikely(ret))
+	if (unlikely(ret)) {
 		mm->context.vdso = NULL;
+		goto end;
+	}
 
+	vdso_base += (vdso_pages << PAGE_SHIFT);
+	ret = install_special_mapping(mm, vdso_base, PAGE_SIZE,
+		(VM_READ | VM_MAYREAD), &vdso_pagelist[vdso_pages]);
+
+	if (unlikely(ret))
+		mm->context.vdso = NULL;
 end:
 	up_write(&mm->mmap_sem);
 	return ret;
@@ -95,5 +104,8 @@ const char *arch_vma_name(struct vm_area_struct *vma)
 {
 	if (vma->vm_mm && (vma->vm_start == (long)vma->vm_mm->context.vdso))
 		return "[vdso]";
+	if (vma->vm_mm && (vma->vm_start ==
+			   (long)vma->vm_mm->context.vdso + PAGE_SIZE))
+		return "[vdso_data]";
 	return NULL;
 }
-- 
2.27.0


