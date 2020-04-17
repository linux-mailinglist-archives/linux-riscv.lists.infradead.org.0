Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C7FEB1AD4DF
	for <lists+linux-riscv@lfdr.de>; Fri, 17 Apr 2020 05:33:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:MIME-Version:
	Content-Type:Content-Transfer-Encoding:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=isDgVFO3wZIG/1M/EIWpbSR4JJ3b82DUw/PYgdtrBsA=; b=TFQZtupkeBpiTg
	MxpJ7BwvHTHSMgvTl4aAE4RYxdgdAPl2hShZEd8Z9JbJZltLJFB8eLkCHAgXU2NA2Hi8RdlNOknoK
	Jbi9PDg+zwB6PYtMCak80Klxh6v6rQ7GnNy6ClOm7w/btzvgtx/JLTTSDdYYDyGfS+hknU8jOqtEu
	WkM0DhOEB7NgMXRJRssTDLZpdR98FlBB5aZQaBlJxhZwXN2dj4wuccTyL9FeyXmx+5EDhKsFE0VJ3
	fQ+EUxl0YnGW3LYjNgnH+GNKrjAWa8j0Z4CtwdK8plaTf6Qp5voRbT+bcgpEpvJSxAqO0BbMsVIJ8
	iwrjLOeJbqwBOhXwk2Vw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jPHkj-0003HI-MK; Fri, 17 Apr 2020 03:33:17 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jPHke-0003Dw-HD
 for linux-riscv@lists.infradead.org; Fri, 17 Apr 2020 03:33:13 +0000
Received: by mail-pg1-x541.google.com with SMTP id 2so437652pgp.11
 for <linux-riscv@lists.infradead.org>; Thu, 16 Apr 2020 20:33:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=isDgVFO3wZIG/1M/EIWpbSR4JJ3b82DUw/PYgdtrBsA=;
 b=SpzsbmvQ8wb9PUP0ss3QBAgGaSm2uG523WrXRDi0JnApwKz4nxHhJtH26mRxl+uNEz
 YBKr1gfZsGWHZDga14lU7/3qlxDfsud4u/5MM2DeqO7JejGlCgPLmEYpGMRsk3Bbf1uh
 UvUso6na2m8D8M5Svx27belfFuW8RIq/HOu5kmb1XoftrElG/kcQQxIwgpYPHS3T+cAC
 ZPGlXUgadhXXqkAE7RS8HlssOpB5yQCZQXip4/ZbWY6OPMtGM1hxGq0loOtUn6XCQPv9
 Ok2eZfVMwSpODHOzmtU6cWpJ+67LJpoutycpIInhpSuh0VIjzaiOWqNUbdOtjPWQR5c5
 EKTg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=isDgVFO3wZIG/1M/EIWpbSR4JJ3b82DUw/PYgdtrBsA=;
 b=Um61UEYVNvFTMomAgll42KnVo/jZEKbdx4ZcOAq2jgTWpMmIRj6WZif4gMJLqyN58Q
 Oih/xv4F7onIJfRQhXttWIQOZzTj9FJSYxndpvcxCGw2eNrauTQQn/os1L5DdScT30uW
 b4Vj+grQAdFboutFGuA0eyPO8FBcJcqI4N6M6/MmE/NbGU0y/LkIZreMU5vOon4KyFaz
 V9SEm/IvbtEFygRmtutCPc82jpXMzrUdXEQNLsaPd5NNNwZSQjFbXKqM752zIkoj76+u
 MxYQQ+DiS31yavaV7Snf5axaX94CHszyzHD5c81EiPqUJc1GASBTLvNgz01Qiv/4xVuQ
 xYHQ==
X-Gm-Message-State: AGi0PuY8ybbSpc8tgpnGM0cMS5zUrc0bHnJ6ql6jEjSc3BLR9w950u17
 qkxUI3izj8Og71IaAkHc/cH58w==
X-Google-Smtp-Source: APiQypIJuYvgaafZuddIJZj3MN2ib7oh8ie+gJdbJBft7nREc3V9A2mv0ELg/wM4MiPGlqKEWa9YhA==
X-Received: by 2002:a63:d801:: with SMTP id b1mr997695pgh.49.1587094391727;
 Thu, 16 Apr 2020 20:33:11 -0700 (PDT)
Received: from VincentChen-ThinkPad-T480s.internal.sifive.com
 (114-34-229-221.HINET-IP.hinet.net. [114.34.229.221])
 by smtp.gmail.com with ESMTPSA id c11sm4778203pgl.53.2020.04.16.20.33.10
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 16 Apr 2020 20:33:11 -0700 (PDT)
From: Vincent Chen <vincent.chen@sifive.com>
To: paul.walmsley@sifive.com, palmer@dabbelt.com, daniel.lezcano@linaro.org,
 tglx@linutronix.de
Subject: [PATCH v2 2/2] riscv: set the permission of vdso_data to read-only
Date: Fri, 17 Apr 2020 11:32:53 +0800
Message-Id: <1587094373-7655-3-git-send-email-vincent.chen@sifive.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1587094373-7655-1-git-send-email-vincent.chen@sifive.com>
References: <1587094373-7655-1-git-send-email-vincent.chen@sifive.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200416_203312_576961_77236735 
X-CRM114-Status: GOOD (  11.09  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Vincent Chen <vincent.chen@sifive.com>, linux-riscv@lists.infradead.org
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

The original vdso_data page is empty, so the permission of the vdso_data
page can be the same with the vdso text page. After introducing the vDSO
common flow, the vdso_data is not empty and the permission should be
changed to read-only.

Signed-off-by: Vincent Chen <vincent.chen@sifive.com>
---
 arch/riscv/kernel/vdso.c | 16 ++++++++++++++--
 1 file changed, 14 insertions(+), 2 deletions(-)

diff --git a/arch/riscv/kernel/vdso.c b/arch/riscv/kernel/vdso.c
index fe9f77eb1698..a48e6d19c50b 100644
--- a/arch/riscv/kernel/vdso.c
+++ b/arch/riscv/kernel/vdso.c
@@ -76,13 +76,22 @@ int arch_setup_additional_pages(struct linux_binprm *bprm,
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
@@ -92,5 +101,8 @@ const char *arch_vma_name(struct vm_area_struct *vma)
 {
 	if (vma->vm_mm && (vma->vm_start == (long)vma->vm_mm->context.vdso))
 		return "[vdso]";
+	if (vma->vm_mm && (vma->vm_start ==
+			   (long)vma->vm_mm->context.vdso + PAGE_SIZE))
+		return "[vdso_data]";
 	return NULL;
 }
-- 
2.7.4


