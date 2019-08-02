Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 724EA7E7B2
	for <lists+linux-riscv@lfdr.de>; Fri,  2 Aug 2019 04:00:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-ID:To:From:
	In-Reply-To:Subject:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=hyTV3TqSxShrORj4NTCIVEO9+qQI0mfiM2QODG7sQvU=; b=RmBJnLjqLbsdN6
	7zVVdaK3BRFHaY4bvNWgpKpp5Gh4Cee2QyzahCzwOFAeSPNxiZwQ3d1J6q+pf/yXc621EONbfE60d
	Ke4AyvNORRXaSwQonzBcSVhtDQEw8xo68e0lvUOW+wsQXrQz0Ep1p8JeP9rBAotiWZPL4c6LMypFJ
	P0RN7u8ma2xsUPv65BRMFy6gltTCezxuoeeetJgi0GsXmjJ156IcA/oUmwF35a96dSKtXwIYBUp1g
	CdWUL+c/niFH/vypcN/SHYYrbJ48EYkf/ic2olnA8Iwch/JfzILVV1tDTjQ1KJQoffQCq9HVl3T3O
	iCucg3ijpD3n7MUFmq8Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1htMrg-0003pp-TJ; Fri, 02 Aug 2019 02:00:16 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1htMrc-0003pB-6s
 for linux-riscv@lists.infradead.org; Fri, 02 Aug 2019 02:00:13 +0000
Received: by mail-pf1-x443.google.com with SMTP id q10so35109668pff.9
 for <linux-riscv@lists.infradead.org>; Thu, 01 Aug 2019 19:00:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=date:subject:in-reply-to:cc:from:to:message-id;
 bh=7GBNg6vL09GNURcleLzNmolu72mMGFPlsiWTKf2bx+s=;
 b=cuixmb4SiMeac3rEzAATdycewFAJy/gRjA0wGDVBSDLND7vg2wFP5MGXCNFeVwbW3z
 8wUpIjzyK3JM9TtGK41gLUcsJngElgcVXyXqy3rZpkvYMBpxLmH8KnUslTCWuiMXmZ0n
 PUu4dL3R1lg2vZ66lEaLKY2VrHx+B1XF7k1793vbaMhadV6kKHDltN0Gs5eillJXa/wx
 pLe/F0GOtf9/ku29eqKC+11PQBKjvO6uJCjX9vwy/a5oSo7A75VrVway+U4aP5kzCkra
 +D3FzbR49XK3FEC1V7wY4Ovsi97usDGXU3LexkUGBd9F6tNxo0TjtKkyhcHxM9vKDr4h
 flSA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:subject:in-reply-to:cc:from:to:message-id;
 bh=7GBNg6vL09GNURcleLzNmolu72mMGFPlsiWTKf2bx+s=;
 b=gVMlKS38hly2qAy7/i6jElZ+XWgxAJQM6Dv9PXk18ULnIMAIbxPaQIIOfW0qFtv8iM
 vgTYqP5aPvpaZE6MfWgFkiCM02TXPp1icBoyOA2Rr0Wk7yFxRm5Mak6OBQqMTpjPiXVh
 5RYRasvvU6jyk5+W2q3YnH5roDBtsvB92TSgNvdr4x3JqkiwOyL3hWrlc0Q4B/DIBGxV
 AxRVc5NykoXEczjWlYT1FlowjNpIL2y8E7DsKXcMHlK/5XLBVfuKC6LbuXPHdNpWudwB
 kVoOlw/5buuWlhyRtY9DgbxKyflPEWDyf8d8rsQdQ6mq1RnSmoJpFW1b9KaC6Icq2k6x
 EEyg==
X-Gm-Message-State: APjAAAUsGPguIqqM6wNTwX8ZJkmt9UtUvutGD9LTdjgTaEhMKaVDv8nd
 5C9Wh6bpqLBoDtMvyERwGvpCdw==
X-Google-Smtp-Source: APXvYqzVjYXxM06N8Xpjv4colv8Vr0BbqkoyEA2Q+euvqw2Trhs80pMNGNo9ZCqfpjZ0Q2lyjzMzUA==
X-Received: by 2002:a63:ed50:: with SMTP id m16mr65421895pgk.209.1564711208035; 
 Thu, 01 Aug 2019 19:00:08 -0700 (PDT)
Received: from localhost ([12.206.222.5])
 by smtp.gmail.com with ESMTPSA id h11sm74925748pfn.120.2019.08.01.19.00.06
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Thu, 01 Aug 2019 19:00:07 -0700 (PDT)
Date: Thu, 01 Aug 2019 19:00:07 -0700 (PDT)
X-Google-Original-Date: Thu, 01 Aug 2019 19:00:01 PDT (-0700)
Subject: Re: Random memory corruption with v5.2
In-Reply-To: <mvmwofw68ji.fsf@suse.de>
From: Palmer Dabbelt <palmer@sifive.com>
To: schwab@suse.de
Message-ID: <mhng-780916c8-0f2d-4487-b55c-2b1236e8778b@palmer-si-x1c4>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190801_190012_310513_FDE0181E 
X-CRM114-Status: GOOD (  19.17  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-riscv@lists.infradead.org,
 David Abdurachmanov <david.abdurachmanov@gmail.com>,
 opensbi@lists.infradead.org, Paul Walmsley <paul.walmsley@sifive.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Thu, 01 Aug 2019 11:32:33 PDT (-0700), schwab@suse.de wrote:
> On Jul 30 2019, Paul Walmsley <paul.walmsley@sifive.com> wrote:
>
>> On Tue, 30 Jul 2019, Andreas Schwab wrote:
>>
>>> On Jul 30 2019, David Abdurachmanov <david.abdurachmanov@gmail.com> wrote:
>>>
>>> > On Mon, Jul 29, 2019 at 1:51 PM Andreas Schwab <schwab@suse.de> wrote:
>>> >>
>>> >> Since switching to 5.2 kernels I'm seeing random crashes and
>>> >> misbehaviors on the HiFive, for example while building gcc or glibc.
>>> >> Perhaps missing TLB flushes?
>>> >
>>> > Do you have some examples of crashes?
>>>
>>> While building glibc:
>>>
>>> an_ES.UTF-8...realloc(): invalid pointer
>>> /bin/sh: line 1:  7841 Aborted                 (core dumped) I18NPATH=. GCONV_PATH=/home/abuild/rpmbuild/BUILD/glibc-2.29/cc-base/iconvdata LC_ALL=C /home/abuild/rpmbuild/BUILD/glibc-2.29/cc-base/elf/ld-linux-riscv64-lp64d.so.1 --library-path /home/abuild/rpmbuild/BUILD/glibc-2.29/cc-base:/home/abuild/rpmbuild/BUILD/glibc-2.29/cc-base/math:/home/abuild/rpmbuild/BUILD/glibc-2.29/cc-base/elf:/home/abuild/rpmbuild/BUILD/glibc-2.29/cc-base/dlfcn:/home/abuild/rpmbuild/BUILD/glibc-2.29/cc-base/nss:/home/abuild/rpmbuild/BUILD/glibc-2.29/cc-base/nis:/home/abuild/rpmbuild/BUILD/glibc-2.29/cc-base/rt:/home/abuild/rpmbuild/BUILD/glibc-2.29/cc-base/resolv:/home/abuild/rpmbuild/BUILD/glibc-2.29/cc-base/mathvec:/home/abuild/rpmbuild/BUILD/glibc-2.29/cc-base/support:/home/abuild/rpmbuild/BUILD/glibc-2.29/cc-base/nptl /home/abuild/rpmbuild/BUILD/glibc-2.29/cc-base/locale/localedef $flags --alias-file=../intl/locale.alias -i locales/$input -f charmaps/$charset --prefix=/home/abuild/rpmbuild/BUILDROOT/glibc-2.29-0.riscv64
>
>>> make[2]: *** [Makefile:422: install-archive-an_ES.UTF-8/UTF-8] Error 134
>>>
>>> While building gcc:
>>>
>>> ../../gcc/ada/exp_aggr.adb: In function 'Exp_Aggr.Expand_N_Aggregate':
>>> ../../gcc/ada/exp_aggr.adb:5311:21: warning: 'Csiz' may be used uninitialized in this function [-Wmaybe-uninitialized]
>>> ../../gcc/ada/exp_aggr.adb:5220:10: note: 'Csiz' was declared here
>>> +===========================GNAT BUG DETECTED==============================+
>>> | 10.0.0 20190727 (experimental) [trunk revision 273844] (riscv64-suse-linux) |
>>> | Storage_Error stack overflow or erroneous memory access                  |
>>> | Error detected at output.ads:39:8                                        |
>>> realloc(): invalid pointer
>>
>> I personally haven't seen these issues; but then again, I haven't done any
>> glibc or gcc builds on v5.2.  Will take a closer look.
>
> I think there is some fundamental problem with SBI_REMOTE_SFENCE_VMA or
> the kernel interface to it.
>
> For exmaple, flush_tlb_page is defined as:
>
> #define flush_tlb_page(vma, addr) flush_tlb_range(vma, addr, 0)
>
> But the third argument of flush_tlb_range is supposed to be the end
> address, so this should actually be:
>
> #define flush_tlb_page(vma, addr) flush_tlb_range(vma, addr, (addr) + PAGE_SIZE)
>
> Alas, that doesn't fix the crashes.

This line of reasoning smells like it'd find the issue: BBL just flushes the
entire TLB every time, but IIRC OpenSBI respects the ranges.  It looks like

    Fixes: 90cb4917b584 ("lib: Implement sfence.vma correctly.")

is what introduced the new behavior in OpenSBI, which may have triggered a lot
of latent bugs in Linux.  If you have an easy way to compile OpenSBI, does
something like

    $ git diff | cat
    diff --git a/lib/sbi/sbi_tlb.c b/lib/sbi/sbi_tlb.c
    index cffda52d66ab..007266b1f970 100644
    --- a/lib/sbi/sbi_tlb.c
    +++ b/lib/sbi/sbi_tlb.c
    @@ -133,50 +133,12 @@ static void sbi_tlb_flush_all(void)
    
     static void sbi_tlb_fifo_sfence_vma(struct sbi_tlb_info *tinfo)
     {
    -       unsigned long start = tinfo->start;
    -       unsigned long size  = tinfo->size;
    -       unsigned long i;
    -
    -       if ((start == 0 && size == 0) || (size == SBI_TLB_FLUSH_ALL)) {
    -               sbi_tlb_flush_all();
    -               return;
    -       }
    -
    -       for (i = 0; i < size; i += PAGE_SIZE) {
    -               __asm__ __volatile__("sfence.vma %0"
    -                                    :
    -                                    : "r"(start + i)
    -                                    : "memory");
    -       }
    +       sbi_tlb_flush_all();
     }
    
     static void sbi_tlb_fifo_sfence_vma_asid(struct sbi_tlb_info *tinfo)
     {
    -       unsigned long start = tinfo->start;
    -       unsigned long size  = tinfo->size;
    -       unsigned long asid  = tinfo->asid;
    -       unsigned long i;
    -
    -       if (start == 0 && size == 0) {
    -               sbi_tlb_flush_all();
    -               return;
    -       }
    -
    -       /* Flush entire MM context for a given ASID */
    -       if (size == SBI_TLB_FLUSH_ALL) {
    -               __asm__ __volatile__("sfence.vma x0, %0"
    -                                    :
    -                                    : "r"(asid)
    -                                    : "memory");
    -               return;
    -       }
    -
    -       for (i = 0; i < size; i += PAGE_SIZE) {
    -               __asm__ __volatile__("sfence.vma %0, %1"
    -                                    :
    -                                    : "r"(start + i), "r"(asid)
    -                                    : "memory");
    -       }
    +       sbi_tlb_flush_all();
     }
    
     void sbi_tlb_fifo_process(struct sbi_scratch *scratch, u32 event)

cause the issue to go away?  If so, then I'd bet we need to scour Linux for
broken TLB flushing, as given the one you found is pretty obvious I'd bet
there's a lot more...

>
> Andreas.

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
