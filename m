Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7EC581FFEE8
	for <lists+linux-riscv@lfdr.de>; Fri, 19 Jun 2020 01:49:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:Mime-Version:Message-ID:To:From:
	In-Reply-To:Subject:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=yYUcfax4E2dlsz0hVRBnudhd98bc0SpSGm5R4FipwaQ=; b=oXXiWJrAuhFIvo
	Y6Z1wAsXCK3l4/ZQQLJNU+gnZCW/WsEEZdNX2yelyVkTEPcc1DxejrC60J6As68QgbT2Ajqsy81m3
	LvYuAjy6m+N1zI/QxoAaHyFDYUgnqCaksxJ1rbyB1cLTY7w3hZt54BTDfovaCGcbbfUeidzFQBFX/
	3Za/3pv8iDnFn9dZSw0JYizZPUU2kO/mSjpIWHtzgs1yLVpbXqLxAUOSv1rzuRWVMw4rluPchI/Yv
	qQ01BvCmP2/zQftf9bbZneof6K9PxsMloxy1IKIfp/lvXGsnBu3+PtOp8dfT7/a0Gu6NBcfUuTJoz
	J0p/MnQOAdTYKTzXfMNQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jm4Hh-0001eq-K6; Thu, 18 Jun 2020 23:49:29 +0000
Received: from mail-pj1-x1042.google.com ([2607:f8b0:4864:20::1042])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jm4Hd-0001eO-KB
 for linux-riscv@lists.infradead.org; Thu, 18 Jun 2020 23:49:28 +0000
Received: by mail-pj1-x1042.google.com with SMTP id a45so3852196pje.1
 for <linux-riscv@lists.infradead.org>; Thu, 18 Jun 2020 16:49:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=dabbelt-com.20150623.gappssmtp.com; s=20150623;
 h=date:subject:in-reply-to:cc:from:to:message-id:mime-version
 :content-transfer-encoding;
 bh=yYUcfax4E2dlsz0hVRBnudhd98bc0SpSGm5R4FipwaQ=;
 b=klf6PYxyM9AmxSgk8zCOKLbtBcPW9VhTg0ulvIVXLz/AQn8z6IwTCbD59rmvPhi93e
 y+DkH7ecRkHn7zLAR2VVtt01GFPgG63EEVZv4/GreOx/9rbvhZsgMJs45i/pgYOsj3ny
 6ezT4eI6QXUlGoesRGqlin/ErRc02ZdEXzM9Lwv2OBPXgymW7S+O2+uWS7/D1kKHflEL
 OT1UsJzh7peBJbJSUEk5WrCSc8VhuSMWv/y3tiJqFhRBEPF9V3BGHzXJSpn8eTl7IDCh
 Ukz3KSPCPw3lwJnElbwl8nmANvhUB9g/RKgjXSWYs2PDzhBct5zE5ugGtNa/ODGWZxrx
 lwTw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:subject:in-reply-to:cc:from:to:message-id
 :mime-version:content-transfer-encoding;
 bh=yYUcfax4E2dlsz0hVRBnudhd98bc0SpSGm5R4FipwaQ=;
 b=Enx/iHxXmIR6OKJmcuUcAU9UpVm2L0oeE/kSA/Un6vLnzJJH2XawHXyiYMCpu9AuhS
 Gd/RAHoUIuU+8w0wC1h1BNi7CAK8jJB7mgTHBleZpjWIGyujIQX565gCMXpLdrngKblL
 AsKjOhWYenIu6nkctkkoI6RMxyuLu525ErNOcD8q4V6sCL6y5//uGLOiZAE73xRVyUnZ
 5aAgNAUAFJsYH1gZ1ufzVbnYym89OR2h+F9W3wdPmNlkOxGs/+pdAszTLaqo0UF5S8vV
 n5DKfOlAbztaZj+f6hl93O+9TjmMzKbOL8R+pHNTA0SOb4iwPhQhxn/0RWytyNAouHk7
 N6+w==
X-Gm-Message-State: AOAM531eJzIC1JuyiBD7EDnzS+Du7WVqWeXN4i9qRFOHq2SkoljStToS
 kKR2Enjmzje20ShT6Q0jE9OdvA==
X-Google-Smtp-Source: ABdhPJx/FYurnEYAtKAZPHIo+SrvRxkIg9o39R8+0LYg79YjNV81gAy08r0kIzj7nF+RFqdHW7P8tw==
X-Received: by 2002:a17:90a:5218:: with SMTP id
 v24mr665196pjh.223.1592524164257; 
 Thu, 18 Jun 2020 16:49:24 -0700 (PDT)
Received: from localhost (76-210-143-223.lightspeed.sntcca.sbcglobal.net.
 [76.210.143.223])
 by smtp.gmail.com with ESMTPSA id f14sm3456421pjq.36.2020.06.18.16.49.23
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 18 Jun 2020 16:49:23 -0700 (PDT)
Date: Thu, 18 Jun 2020 16:49:23 -0700 (PDT)
X-Google-Original-Date: Thu, 18 Jun 2020 16:45:09 PDT (-0700)
Subject: Re: [PATCH 18/25] mm/riscv: Use mm_fault_accounting()
In-Reply-To: <20200615221607.7764-19-peterx@redhat.com>
From: Palmer Dabbelt <palmer@dabbelt.com>
To: peterx@redhat.com
Message-ID: <mhng-261b69ba-d08f-4560-9c69-f4ece64a7729@palmerdabbelt-glaptop1>
Mime-Version: 1.0 (MHng)
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200618_164925_879984_E992B6E3 
X-CRM114-Status: GOOD (  18.81  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:1042 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: aarcange@redhat.com, aou@eecs.berkeley.edu, linux-kernel@vger.kernel.org,
 peterx@redhat.com, Paul Walmsley <paul.walmsley@sifive.com>,
 akpm@linux-foundation.org, Linus Torvalds <torvalds@linux-foundation.org>,
 linux-riscv@lists.infradead.org, gerald.schaefer@de.ibm.com
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Mon, 15 Jun 2020 15:16:00 PDT (-0700), peterx@redhat.com wrote:
> Use the new mm_fault_accounting() helper for page fault accounting.
>
> Avoid doing page fault accounting multiple times if the page fault is retried.
>
> CC: Paul Walmsley <paul.walmsley@sifive.com>
> CC: Palmer Dabbelt <palmer@dabbelt.com>
> CC: Albert Ou <aou@eecs.berkeley.edu>
> CC: linux-riscv@lists.infradead.org
> Signed-off-by: Peter Xu <peterx@redhat.com>
> ---
>  arch/riscv/mm/fault.c | 21 +++------------------
>  1 file changed, 3 insertions(+), 18 deletions(-)
>
> diff --git a/arch/riscv/mm/fault.c b/arch/riscv/mm/fault.c
> index be84e32adc4c..9262338614d1 100644
> --- a/arch/riscv/mm/fault.c
> +++ b/arch/riscv/mm/fault.c
> @@ -30,7 +30,7 @@ asmlinkage void do_page_fault(struct pt_regs *regs)
>  	struct vm_area_struct *vma;
>  	struct mm_struct *mm;
>  	unsigned long addr, cause;
> -	unsigned int flags = FAULT_FLAG_DEFAULT;
> +	unsigned int flags = FAULT_FLAG_DEFAULT, major = 0;
>  	int code = SEGV_MAPERR;
>  	vm_fault_t fault;
>
> @@ -65,9 +65,6 @@ asmlinkage void do_page_fault(struct pt_regs *regs)
>
>  	if (user_mode(regs))
>  		flags |= FAULT_FLAG_USER;
> -
> -	perf_sw_event(PERF_COUNT_SW_PAGE_FAULTS, 1, regs, addr);
> -
>  retry:
>  	down_read(&mm->mmap_sem);
>  	vma = find_vma(mm, addr);
> @@ -111,6 +108,7 @@ asmlinkage void do_page_fault(struct pt_regs *regs)
>  	 * the fault.
>  	 */
>  	fault = handle_mm_fault(vma, addr, flags);
> +	major |= fault & VM_FAULT_MAJOR;
>
>  	/*
>  	 * If we need to retry but a fatal signal is pending, handle the
> @@ -128,21 +126,7 @@ asmlinkage void do_page_fault(struct pt_regs *regs)
>  		BUG();
>  	}
>
> -	/*
> -	 * Major/minor page fault accounting is only done on the
> -	 * initial attempt. If we go through a retry, it is extremely
> -	 * likely that the page will be found in page cache at that point.
> -	 */
>  	if (flags & FAULT_FLAG_ALLOW_RETRY) {
> -		if (fault & VM_FAULT_MAJOR) {
> -			tsk->maj_flt++;
> -			perf_sw_event(PERF_COUNT_SW_PAGE_FAULTS_MAJ,
> -				      1, regs, addr);
> -		} else {
> -			tsk->min_flt++;
> -			perf_sw_event(PERF_COUNT_SW_PAGE_FAULTS_MIN,
> -				      1, regs, addr);
> -		}
>  		if (fault & VM_FAULT_RETRY) {
>  			flags |= FAULT_FLAG_TRIED;
>
> @@ -156,6 +140,7 @@ asmlinkage void do_page_fault(struct pt_regs *regs)
>  	}
>
>  	up_read(&mm->mmap_sem);
> +	mm_fault_accounting(tsk, regs, addr, major);
>  	return;
>
>  	/*

AFAICT this changes the behavior of the perf event: it used to count any fault,
whereas now it only counts those that succeed successfully.  If everyone else
is doing it that way then I'm happy to change us over, but this definately
isn't just avoiding retries.

