Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F0FE2177E86
	for <lists+linux-riscv@lfdr.de>; Tue,  3 Mar 2020 19:38:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:Mime-Version:Message-ID:To:From:
	In-Reply-To:Subject:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=zwqvmQwhdc6pgtOJG8q45mxZQTPzWxhvYi6YFGr/Wag=; b=PfbYo7911mdnBM
	r6HYD0YEsHCTAkVYceiGqllyyM+BdSACd+0FqglsKdZwLIMhgDnQDl8SP5ww+kC6smzG5h6O3/o4a
	zAuNkkzm5vQtX8P1wwjHXC6FyBngYrqgiJG9U4SRuBNtrGAKOGjXM+mfHsyQx0CN133jvdugxg5SZ
	J6juAfBLRs1NXsOu+0P3SG+Do3aQwVVB9RTeTp321ByX9c8XOhDG7X77nM+8q+YTVq4pylrQBDZEL
	UkNCHGZUQ3Fmr/me0OcYRkurQaHDehzzYOSSJF/VALbu+v+Z9ersgwNoG5UNSTwoG1UdRiT97K7ZC
	y59VM8xbrv003y0midfA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j9CRJ-0000P6-EO; Tue, 03 Mar 2020 18:38:45 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j9CRB-0000H4-Ft
 for linux-riscv@lists.infradead.org; Tue, 03 Mar 2020 18:38:39 +0000
Received: by mail-pl1-x641.google.com with SMTP id g6so1715315plp.6
 for <linux-riscv@lists.infradead.org>; Tue, 03 Mar 2020 10:38:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=dabbelt-com.20150623.gappssmtp.com; s=20150623;
 h=date:subject:in-reply-to:cc:from:to:message-id:mime-version
 :content-transfer-encoding;
 bh=zwqvmQwhdc6pgtOJG8q45mxZQTPzWxhvYi6YFGr/Wag=;
 b=KEFvkU/eQr2jNCCxHL64XxWUVVyOmucVy7/b7lZY15hv+iiy7QGhXyr4fq2xknI5Ke
 8WiTo77s0fx3HoK1Ek9GNU3tijho2bu+1JfHmlDWPcpYr7o3vpUc0CNBv1/yiNP4RY6F
 Rrl+OjfTU/QjeMy1kf/SHgMvja2p2OkPIui7JQqxtIyLTEGZ5sQCggvTOu1v+zgJvVW0
 OE3FQxa07WvBbtJ5Vw3O4WJzKjmRYCOQD0ng8DbA99rQvXIfWshGBB2TsFgoSaZRhWQe
 IJX2uPIBMKE2qJYvUgeaM/74MdCa61QPLc8IWCZUONdSX595LnJXEnogwxWdtW1tlY+0
 mg+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:subject:in-reply-to:cc:from:to:message-id
 :mime-version:content-transfer-encoding;
 bh=zwqvmQwhdc6pgtOJG8q45mxZQTPzWxhvYi6YFGr/Wag=;
 b=ARBmdanoDJgWdb2p3mNQUt1LhbaDotZQXA0jE7lI5akoCBL3qpgBqcUGhm0WYXup8W
 zFTqc8zYI+CKCIJRAeu2ZRFeGnDM+6aZBTDzeRLs7xLKFtjHRE+xXHGPHljHX3Vdrz1a
 imuZgIiV2J8SLH2rviqCra38ziO4CM9dQxLs552izRdTCF/lyYw8CikMUJzUWF3u5m1z
 tIdnWC6M+Upx4itcvGGfHfw7VUh3q2a4k1Nxaid0WHB1lxVjjJGLRC+dKRV/5aOdXNqO
 UtrsT42pDqkJNMDWrMzOoXhsDuYCQ2jEdvoghj0o3t6RJpFYVPzWkzNM52WjHn5xEeLO
 Anow==
X-Gm-Message-State: ANhLgQ3zkO2KWC6zpqtFooUdBTavhSL+laOPvsAdTncPJIkDxIIikQ5q
 +WDztrWm3V6wsFKhQRj/Dwar5vqCnx4=
X-Google-Smtp-Source: ADFU+vvXuU72C/09DP0xWLNx4wQmulSsCXmdpDoABduY03p6MY2NYPZnnVOQZUhPRGqY64DI+L/sBw==
X-Received: by 2002:a17:90a:33c7:: with SMTP id
 n65mr5559982pjb.51.1583260716097; 
 Tue, 03 Mar 2020 10:38:36 -0800 (PST)
Received: from localhost ([2620:0:1000:2514:23a5:d584:6a92:3e3c])
 by smtp.gmail.com with ESMTPSA id w19sm17947807pgm.27.2020.03.03.10.38.34
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 03 Mar 2020 10:38:35 -0800 (PST)
Date: Tue, 03 Mar 2020 10:38:35 -0800 (PST)
X-Google-Original-Date: Tue, 03 Mar 2020 10:30:50 PST (-0800)
Subject: Re: [PATCH 3/3] RISC-V: Stop using LOCAL for the uaccess fixups
In-Reply-To: <CAKwvOdn0wuytFTkJRm7u5vGUTWyYnrXdGGXHfoOfg6ndzT+u8g@mail.gmail.com>
From: Palmer Dabbelt <palmer@dabbelt.com>
To: Nick Desaulniers <ndesaulniers@google.com>
Message-ID: <mhng-18207e65-8208-49c4-a8fc-70b9e4311851@palmerdabbelt-glaptop1>
Mime-Version: 1.0 (MHng)
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200303_103837_556353_7D90480F 
X-CRM114-Status: GOOD (  17.75  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: clang-built-linux@googlegroups.com, linux-riscv@lists.infradead.org,
 kernel-team@android.com
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Thu, 27 Feb 2020 15:03:42 PST (-0800), Nick Desaulniers wrote:
> On Thu, Feb 27, 2020 at 1:35 PM Palmer Dabbelt <palmer@dabbelt.com> wrote:
>>
>> From: Palmer Dabbelt <palmerdabbelt@google.com>
>>
>> LLVM's integrated assembler doesn't support the LOCAL directive, which we're
>> using when generating our uaccess fixup tables.  Luckily the table fragment is
>> small enough that there's only one internal symbol, so using a relative symbol
>> reference doesn't really complicate anything.
>
> Is `LOCAL` a macro for `.local`? (Looks like no). I would think
> `.local` is supported, but `LOCAL` isn't something I've seen before.
>
> Ah, looks like it's local to macros:
> https://sourceware.org/binutils/docs/as/Macro.html#Macro
> "Warning: LOCAL is only available if you select “alternate macro
> syntax” with ‘--alternate’ or .altmacro. See .altmacro."
> https://sourceware.org/binutils/docs/as/Altmacro.html#Altmacro
> Link: https://sourceware.org/binutils/docs/as/Local.html#Local
>
> But these macros are setting .altmacro...
> So it looks like Clang's integrated assembler doesn't yet support
> `LOCAL`. Filed:
> https://bugs.llvm.org/show_bug.cgi?id=45051
>
> If we're no longer using LOCAL, do we still need `.altmacro`?
>
> I also see two usages in:
> arch/riscv/kernel/entry.S
>
> Would you mind fixing those up, too?

Done.

>
> Otherwise patch LGTM.
>
>>
>> Signed-off-by: Palmer Dabbelt <palmerdabbelt@google.com>
>> ---
>>  arch/riscv/lib/uaccess.S | 5 ++---
>>  1 file changed, 2 insertions(+), 3 deletions(-)
>>
>> diff --git a/arch/riscv/lib/uaccess.S b/arch/riscv/lib/uaccess.S
>> index f29d2ba2c0a6..40bf130073e8 100644
>> --- a/arch/riscv/lib/uaccess.S
>> +++ b/arch/riscv/lib/uaccess.S
>> @@ -5,12 +5,11 @@
>>
>>         .altmacro
>>         .macro fixup op reg addr lbl
>> -       LOCAL _epc
>> -_epc:
>> +100:
>>         \op \reg, \addr
>>         .section __ex_table,"a"
>>         .balign RISCV_SZPTR
>> -       RISCV_PTR _epc, \lbl
>> +       RISCV_PTR 100b, \lbl
>>         .previous
>>         .endm
>>
>> --
>
> -- 
> Thanks,
> ~Nick Desaulniers

