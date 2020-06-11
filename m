Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 174F41F6D9C
	for <lists+linux-riscv@lfdr.de>; Thu, 11 Jun 2020 20:50:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:To:
	Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=0HOxmX84CtOBZELFo2yLdhQ76D4cXxjqf83woFragKk=; b=ppsShmMbB+YgcQ6xBwGTIug4i
	QaFHroi441teLTyz5XmPbLNtyrSIBs1MonD42dy17aEu+5ITxTuoqKiX911z3PPpI5tB5woSedFir
	5nsK5tpn+hqPjBhZKvTwIugAdHdYB39tkquKmwXrYbiplIvgZlSWPNC+oBjRqcK8T+v+oXVjKTn+S
	i/LyodCICQknkOTKuwxRkVRXfyLbwv0taU7nqP0fEyYHi0rPqWeLgl89d5HL56ptpbqG7rr95Px5m
	RLddt2dpGzwdTW1v38F6dY0ak3g1oJ0lmpJwnfDFnZdgi4mIv6wism1e+pqvAbno20/uRvKeiR6G5
	AID1YS1yg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jjSHC-00075i-Ei; Thu, 11 Jun 2020 18:50:10 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jjSH5-0005j3-EG
 for linux-riscv@lists.infradead.org; Thu, 11 Jun 2020 18:50:07 +0000
Received: by mail-pl1-x641.google.com with SMTP id y18so2658988plr.4
 for <linux-riscv@lists.infradead.org>; Thu, 11 Jun 2020 11:50:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=0HOxmX84CtOBZELFo2yLdhQ76D4cXxjqf83woFragKk=;
 b=oxsWQEUnqGUCXsQYu4Q4x7fbNFwOw7SuMdOl2l++cT3hILmvMY43Cvlvc01lQcNDq6
 EgiVfO3Em6SfYWGww+r6raQdqBbm9Aqqap+8XWBkuPoYyG7bP85i6gV0TCm3FndV+bnU
 fz9L/NdwwXaCqNvr1QJGjDquY1L6DPen4q3Gy8ppp5emfJsw3oxr/kGuw92STRey/iLN
 1o6WGWm4rspjzYqfxh0VyYljMtSYn0iIresX7/RdLCt5KB/JRotFSmB9xzK3gC4GvbMf
 7T+Ao/6ynTLcC1eq+v+TK+5wuCcAtn+gBl6P8br8V+fXY8dIL9NMY1P3avrVq9o5JVCA
 KgvA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=0HOxmX84CtOBZELFo2yLdhQ76D4cXxjqf83woFragKk=;
 b=r1YZHhxlPFNRQWQqbwuyjQYkzIVUY3Pav+X1tHy7MhRLm/9kKCZGX0ogN6AUcxd70M
 i9igj8+Q1B3j57HXW4MGalrJGneKYm2iXKYj0Ph71QbIv/gSreC4cO9hLei+DXxst9CR
 CFcKKwuTSOxpacQRaA+SwBIWXdrZZbR+V4YRs8us3MTOkx49MpA00v774kNuugH6sssP
 roMp8qyOoAyOEbRd2930rUKlTtrUV+8GNYBBLfkbK3cxQJ6q01bQqQ3Y8Vp4ihwp/wTA
 AF/weh/uTNEKo7mUmgqsBC0VI1Yh3/ELposaXElu/4nTMHo8Dl64m37kddpC56sqEYSj
 RiDA==
X-Gm-Message-State: AOAM533ueJhIUKwf7jRkzlDVYDxLAScwn41KwMDDgwUqO8fkSovKzP1Y
 cSSmNKp0SloQb0qg2xocXUda5zal77ddQwpS+op/wg==
X-Google-Smtp-Source: ABdhPJyJtc1w81gMIYy1ZYthLEsyyhDaPcYkmrzbwsIH3A4ulWVJtPADJXXEIc8Z3352j9KkW6UDv9s9TSKEAizZ1/s=
X-Received: by 2002:a17:90a:1e:: with SMTP id 30mr8711851pja.25.1591901402456; 
 Thu, 11 Jun 2020 11:50:02 -0700 (PDT)
MIME-Version: 1.0
References: <20200611183235.37508-1-nhuck@google.com>
In-Reply-To: <20200611183235.37508-1-nhuck@google.com>
From: Nick Desaulniers <ndesaulniers@google.com>
Date: Thu, 11 Jun 2020 11:49:51 -0700
Message-ID: <CAKwvOdnnP3cHZMjgV355r=OO7MDLmSoOoU_ch8+ByRaJEkF=rg@mail.gmail.com>
Subject: Re: [PATCH] riscv/atomic: Fix sign extension for RV64I
To: Nathan Huckleberry <nhuck@google.com>
Content-Type: text/plain; charset="UTF-8"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200611_115003_518900_7040E022 
X-CRM114-Status: GOOD (  13.56  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
 [list.dnswl.org]
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.5 ENV_AND_HDR_SPF_MATCH  Env and Hdr From used in default SPF WL
 Match -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium sender
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
Cc: Albert Ou <aou@eecs.berkeley.edu>, LKML <linux-kernel@vger.kernel.org>,
 clang-built-linux <clang-built-linux@googlegroups.com>,
 Palmer Dabbelt <palmer@dabbelt.com>, Paul Walmsley <paul.walmsley@sifive.com>,
 linux-riscv@lists.infradead.org
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Thu, Jun 11, 2020 at 11:34 AM 'Nathan Huckleberry' via Clang Built
Linux <clang-built-linux@googlegroups.com> wrote:
>
> The argument passed to cmpxchg is not guaranteed to be sign
> extended, but lr.w sign extends on RV64I.

I had a hard time finding documentation on this sign extension. Is
lr.w just the atomic version of lw?

https://content.riscv.org/wp-content/uploads/2019/06/riscv-spec.pdf
pdf page 54, printed page 38 says:
   The LW instruction loads a 32-bit value from memory and sign-extends
    this to 64 bits before storing it in register rd for RV64I.

> This makes cmpxchg
> fail on clang built kernels when __old is negative.
>
> To fix this, we just cast __old to long which sign extends on
> RV64I. With this fix, clang built RISC-V kernels now boot.

Oh, indeed, nice!  Thanks for digging into this issue, and sending the patch.
Tested-by: Nick Desaulniers <ndesaulniers@google.com> # QEMU boot, clang build

>
> Link: https://github.com/ClangBuiltLinux/linux/issues/867
> Cc: clang-built-linux@googlegroups.com
> Signed-off-by: Nathan Huckleberry <nhuck@google.com>
> ---
>  arch/riscv/include/asm/cmpxchg.h | 8 ++++----
>  1 file changed, 4 insertions(+), 4 deletions(-)
>
> diff --git a/arch/riscv/include/asm/cmpxchg.h b/arch/riscv/include/asm/cmpxchg.h
> index d969bab4a26b..262e5bbb2776 100644
> --- a/arch/riscv/include/asm/cmpxchg.h
> +++ b/arch/riscv/include/asm/cmpxchg.h
> @@ -179,7 +179,7 @@
>                         "       bnez %1, 0b\n"                          \
>                         "1:\n"                                          \
>                         : "=&r" (__ret), "=&r" (__rc), "+A" (*__ptr)    \
> -                       : "rJ" (__old), "rJ" (__new)                    \
> +                       : "rJ" ((long)__old), "rJ" (__new)              \
>                         : "memory");                                    \
>                 break;                                                  \
>         case 8:                                                         \
> @@ -224,7 +224,7 @@
>                         RISCV_ACQUIRE_BARRIER                           \
>                         "1:\n"                                          \
>                         : "=&r" (__ret), "=&r" (__rc), "+A" (*__ptr)    \
> -                       : "rJ" (__old), "rJ" (__new)                    \
> +                       : "rJ" ((long)__old), "rJ" (__new)              \
>                         : "memory");                                    \
>                 break;                                                  \
>         case 8:                                                         \
> @@ -270,7 +270,7 @@
>                         "       bnez %1, 0b\n"                          \
>                         "1:\n"                                          \
>                         : "=&r" (__ret), "=&r" (__rc), "+A" (*__ptr)    \
> -                       : "rJ" (__old), "rJ" (__new)                    \
> +                       : "rJ" ((long)__old), "rJ" (__new)              \
>                         : "memory");                                    \
>                 break;                                                  \
>         case 8:                                                         \
> @@ -316,7 +316,7 @@
>                         "       fence rw, rw\n"                         \
>                         "1:\n"                                          \
>                         : "=&r" (__ret), "=&r" (__rc), "+A" (*__ptr)    \
> -                       : "rJ" (__old), "rJ" (__new)                    \
> +                       : "rJ" ((long)__old), "rJ" (__new)              \
>                         : "memory");                                    \
>                 break;                                                  \
>         case 8:                                                         \
> --
-- 
Thanks,
~Nick Desaulniers

