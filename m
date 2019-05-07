Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B12516DEE
	for <lists+linux-riscv@lfdr.de>; Wed,  8 May 2019 01:48:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Mime-Version:Message-ID:To:From:In-Reply-To:Subject:
	Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:List-Owner;
	 bh=QUXM6ISvZLOgJRZ4c0r+N9QZbAGUyBI/uD7ws4XUhHg=; b=p07LzzYR//QgjnM2mdfisDBeg
	mB3/NxGEf6AIaOV214rIgGLZrnQl9fC/FCHPCdRD6qZMZ/s4fY4pR/FYmuCC2zQjuS7y25t3aH94N
	Ps7hrhBIywTnnBfdg1SOoHejp/m9aMI9/S/97Bkhchi4SwakqOzRZRq8ZBwwxgrp/dCxeSXTjobNV
	2gDufrqeYCYZMW2qKMTqAVLeDH3Ai2qZiWcZQdO8/hAO2VOGlL48bbCh+asK5cF9N2lUTbjBHD6DN
	hiE09QY/jwR1e8iS46Eh32NYBBcH29xJ2maRfj5Arn3LhxLVAW5bS/Ui2uVFANXkTlPayP1Ge4nvX
	qoZkAXKSw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hO9oh-0001VA-L0; Tue, 07 May 2019 23:48:11 +0000
Received: from mail-pf1-f196.google.com ([209.85.210.196])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hO9od-0001UR-Et
 for linux-riscv@lists.infradead.org; Tue, 07 May 2019 23:48:09 +0000
Received: by mail-pf1-f196.google.com with SMTP id u17so9468259pfn.7
 for <linux-riscv@lists.infradead.org>; Tue, 07 May 2019 16:48:05 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:subject:in-reply-to:cc:from:to:message-id
 :mime-version:content-transfer-encoding;
 bh=Xc5yB1zQ65A+bT/TEX7kwPlOeoH820lrDziLp7lmLpk=;
 b=sjEtIrFSpa9RJytZoG35u5aGLZEx/nblegktkPmtT3/nC2uaRzo5tRYTK3vsZ7m2Ya
 mHZArjyVwr3uu4sz2c123/zjWL1Ri2xX15eJNxPhVAA/uHUxfi9AG/cyK5dcUQVUTDaT
 eLUBT0HmJwPbyhzfemp8alwyzpfU5vcB2ZjEuO+YOFspRXZN9z5+kQD5/jYfcHW/tUSK
 Qz1+IJj+o7fiY6ojzj2YyBytBTSV26nATi6OBIeB1/U+sP99LoqlPYfP+hNkbrhGX6W4
 7r81FqM0YNgbhDM1WjfvxoXrjYXsFvCJPSIpReLaLdoLho/zj2VfC50PHsyZSVbbvkRu
 tq5w==
X-Gm-Message-State: APjAAAUHf3Bs+mh2l1M1NCCR8uoRl/Opl7GTOpVD60DZv4xD0huHvmRb
 tUHv59uj+bEpq9KBH4zxCcKJn1wUfXg=
X-Google-Smtp-Source: APXvYqzxi+8s0kTgdE3wx6h+YyLz1JxmMhnAT4Dvn0eloXEXtiTyplpknHAhK/JvQQI++cJkR2huwA==
X-Received: by 2002:aa7:8186:: with SMTP id g6mr45461551pfi.126.1557272884660; 
 Tue, 07 May 2019 16:48:04 -0700 (PDT)
Received: from localhost ([12.206.222.5])
 by smtp.gmail.com with ESMTPSA id q17sm35869266pfi.185.2019.05.07.16.48.03
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Tue, 07 May 2019 16:48:03 -0700 (PDT)
Date: Tue, 07 May 2019 16:48:03 -0700 (PDT)
X-Google-Original-Date: Tue, 07 May 2019 16:27:44 PDT (-0700)
Subject: Re: [PATCH] riscv: fix locking violation in page fault handler
In-Reply-To: <mvm5zqmu35d.fsf@suse.de>
From: Palmer Dabbelt <palmer@sifive.com>
To: schwab@suse.de
Message-ID: <mhng-56794b7f-6cd4-4eb9-a962-83ad256ed3cd@palmer-si-x1e>
Mime-Version: 1.0 (MHng)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190507_164807_505736_8A67967E 
X-CRM114-Status: GOOD (  18.33  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.196 listed in list.dnswl.org]
 0.1 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.196 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-BeenThere: linux-riscv@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-riscv.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-riscv>,
 <mailto:linux-riscv-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-riscv/>
List-Post: <mailto:linux-riscv@lists.infradead.org>
List-Help: <mailto:linux-riscv-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-riscv>,
 <mailto:linux-riscv-request@lists.infradead.org?subject=subscribe>
Cc: linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Tue, 07 May 2019 00:36:46 PDT (-0700), schwab@suse.de wrote:
> When a user mode process accesses an address in the vmalloc area
> do_page_fault tries to unlock the mmap semaphore when it isn't locked.
>
> Signed-off-by: Andreas Schwab <schwab@suse.de>
> ---
>  arch/riscv/mm/fault.c | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
>
> diff --git a/arch/riscv/mm/fault.c b/arch/riscv/mm/fault.c
> index 88401d5125bc..c51878e5a66a 100644
> --- a/arch/riscv/mm/fault.c
> +++ b/arch/riscv/mm/fault.c
> @@ -181,6 +181,7 @@ asmlinkage void do_page_fault(struct pt_regs *regs)
>  	up_read(&mm->mmap_sem);
>  	/* User mode accesses just cause a SIGSEGV */
>  	if (user_mode(regs)) {
> +bad_area_do_trap:
>  		do_trap(regs, SIGSEGV, code, addr, tsk);
>  		return;
>  	}
> @@ -230,7 +231,7 @@ asmlinkage void do_page_fault(struct pt_regs *regs)
>  		int index;
>
>  		if (user_mode(regs))
> -			goto bad_area;
> +			goto bad_area_do_trap;
>
>  		/*
>  		 * Synchronize this task's top level page-table

I got lost with all the gotos, I think something like this is cleaner

    diff --git a/arch/riscv/mm/fault.c b/arch/riscv/mm/fault.c
    index 26293bc053a8..cec8be9e2d6a 100644
    --- a/arch/riscv/mm/fault.c
    +++ b/arch/riscv/mm/fault.c
    @@ -229,8 +229,9 @@ asmlinkage void do_page_fault(struct pt_regs *regs)
                    pte_t *pte_k;
                    int index;
    
    +               /* User mode accesses just cause a SIGSEGV */
                    if (user_mode(regs))
    -                       goto bad_area;
    +                       return do_trap(regs, SIGSEGV, code, addr, tsk);
    
                    /*
                     * Synchronize this task's top level page-table

Unless anyone has a better idea?

Either way:

Reviewed-by: Palmer Dabbelt <palmer@sifive.com>

LMK if you, or anyone else, has a preference.  I'm assuming this will go in
through my tree, so I've picked up my version for now :)

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
