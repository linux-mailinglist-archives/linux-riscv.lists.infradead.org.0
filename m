Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6742D85E08
	for <lists+linux-riscv@lfdr.de>; Thu,  8 Aug 2019 11:17:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=mfNsZ7FzhgtZD6rkcrFJtABmJi5QiPYlF5XDthyzgGA=; b=I5SiAB/6jjwyT5sh2nzo4ky0S
	C9b/oCQLf+Vpp8Zxw4a8Sj661e3TKET5eRNweFwnyK43CfOeoDQdQSCpk+l+fRy9KRM+EgNxB4Pxk
	rwU85R4DSlKO6psJGh95bcZvvOOXCbTEuy3gg5Pi+7hdFANNhPtftIw1pvaHF1zCzcKEqJkZoggmU
	1QnbjpqaajgS/9Ik+UT10y8qfsqaGQ1sYkQR5SfQco5XhYYe0Bkf23m26aoqNRUlMqco3Xx4DAgg3
	zTR+DnzyjWI5OItC0pFIPjYw1muMLUF18nV5K07BIj3kzl9AviMAMiSPy9Gafe4X6ZKmIeyxT+W5V
	iy+aR9GCg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hveYO-0006U1-So; Thu, 08 Aug 2019 09:17:49 +0000
Received: from mail-lf1-x144.google.com ([2a00:1450:4864:20::144])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hveX0-0005q8-DI
 for linux-riscv@lists.infradead.org; Thu, 08 Aug 2019 09:16:25 +0000
Received: by mail-lf1-x144.google.com with SMTP id b29so59033936lfq.1
 for <linux-riscv@lists.infradead.org>; Thu, 08 Aug 2019 02:16:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=cogentembedded-com.20150623.gappssmtp.com; s=20150623;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=M0Lkp7TI/1lX0PjPf1h84OWxjj1q7OPrwwtMkQUMB80=;
 b=Z1XISyDmNMrKzhH5jpoXRm+UDpftCfPHsXSHiMp386hpt6qzA47mI+MZCjhh8/Zeyw
 jokbLjILXaPIhi16o8/c61dqditvR/MIYHeLbkQyQnW1HIi9UnftiHokpg6qK507fm7J
 Af4qYSS1b0OGvvXKHezXLIVBZAA22zNmMLXIgrCO7kd7HL9v99JBKOfmG2a8I4SKpTHT
 bYqs+AyT4ajWAbpBYl2QGZEPQO6YYKHDcpVDFpxR617xywNAkq8MTsHvEe09qcGQm0N/
 Q2SBZWzsoeIcTUgNNHs8jSQHhyhyqyNLDF5nH869msJXyFVwIVvvUIWwVSw8UZZBa3BW
 /xHw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=M0Lkp7TI/1lX0PjPf1h84OWxjj1q7OPrwwtMkQUMB80=;
 b=NHSbrVlhXSKmtyGIaqSaxbFmQEr+C1mZGmED+9TVJk5b0X92amV6F6StwUHEBd/WlN
 zigQfjVp9wXCc2fYqloo0w+vwvC4ujhvY8SZWMBgAi6UO7fwFSId5gxWle0e2Vr3XiGp
 05iuKt+tWk1ls7RI0impRnpBNpXeVTIqY/z5iulASYgGlv/Lzjv6HpawWtv7pn/GdAj/
 Cc1ocExorIxpVmBmSAZDzaiaFRbD3i4DIO1b4VgSaxQs1uyN+VRlK6W+FKaY0lstF67n
 3EFlqoRYsbm2oPvYHDs0qXbGqRIbchOfUdbZW9lpTdL1gk5gEn5f8VBLzb4wrZFeIbfA
 jD5g==
X-Gm-Message-State: APjAAAVEj0TzUguGLIpBxcBA8LQFdSfhQuqxiElHaGnX29rr2PuA22Vh
 jZnI97/NSL8xpFFWyh2BOjwLjA==
X-Google-Smtp-Source: APXvYqwAZY8WXCeiGX2n+XECYEd8x3LcF9hNec57wPu9uZBuLdOygGHP8AmFYhQOUjDhlaSnPEqcXw==
X-Received: by 2002:a19:c711:: with SMTP id x17mr8605646lff.147.1565255778647; 
 Thu, 08 Aug 2019 02:16:18 -0700 (PDT)
Received: from ?IPv6:2a00:1fa0:8c7:ada9:25b2:24d8:3973:eb87?
 ([2a00:1fa0:8c7:ada9:25b2:24d8:3973:eb87])
 by smtp.gmail.com with ESMTPSA id f23sm406561lfc.25.2019.08.08.02.16.16
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 08 Aug 2019 02:16:17 -0700 (PDT)
Subject: Re: [PATCH v6 09/14] mips: Properly account for stack randomization
 and stack guard gap
To: Alexandre Ghiti <alex@ghiti.fr>, Andrew Morton <akpm@linux-foundation.org>
References: <20190808061756.19712-1-alex@ghiti.fr>
 <20190808061756.19712-10-alex@ghiti.fr>
From: Sergei Shtylyov <sergei.shtylyov@cogentembedded.com>
Message-ID: <bd67507e-8a5b-34b5-1a33-5500bbb724b2@cogentembedded.com>
Date: Thu, 8 Aug 2019 12:16:04 +0300
User-Agent: Mozilla/5.0 (Windows NT 6.3; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190808061756.19712-10-alex@ghiti.fr>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190808_021622_992319_89892B0B 
X-CRM114-Status: GOOD (  16.99  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:144 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Albert Ou <aou@eecs.berkeley.edu>, Kees Cook <keescook@chromium.org>,
 linux-mm@kvack.org, Catalin Marinas <catalin.marinas@arm.com>,
 Palmer Dabbelt <palmer@sifive.com>, Will Deacon <will.deacon@arm.com>,
 Russell King <linux@armlinux.org.uk>, Ralf Baechle <ralf@linux-mips.org>,
 linux-kernel@vger.kernel.org, linux-fsdevel@vger.kernel.org,
 Luis Chamberlain <mcgrof@kernel.org>, Paul Burton <paul.burton@mips.com>,
 Paul Walmsley <paul.walmsley@sifive.com>, James Hogan <jhogan@kernel.org>,
 linux-riscv@lists.infradead.org, linux-mips@vger.kernel.org,
 Christoph Hellwig <hch@lst.de>, linux-arm-kernel@lists.infradead.org,
 Alexander Viro <viro@zeniv.linux.org.uk>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Hello!

On 08.08.2019 9:17, Alexandre Ghiti wrote:

> This commit takes care of stack randomization and stack guard gap when
> computing mmap base address and checks if the task asked for randomization.
> 
> This fixes the problem uncovered and not fixed for arm here:
> https://lkml.kernel.org/r/20170622200033.25714-1-riel@redhat.com
> 
> Signed-off-by: Alexandre Ghiti <alex@ghiti.fr>
> Acked-by: Kees Cook <keescook@chromium.org>
> Acked-by: Paul Burton <paul.burton@mips.com>
> Reviewed-by: Luis Chamberlain <mcgrof@kernel.org>
> ---
>   arch/mips/mm/mmap.c | 14 ++++++++++++--
>   1 file changed, 12 insertions(+), 2 deletions(-)
> 
> diff --git a/arch/mips/mm/mmap.c b/arch/mips/mm/mmap.c
> index d79f2b432318..f5c778113384 100644
> --- a/arch/mips/mm/mmap.c
> +++ b/arch/mips/mm/mmap.c
> @@ -21,8 +21,9 @@ unsigned long shm_align_mask = PAGE_SIZE - 1;	/* Sane caches */
>   EXPORT_SYMBOL(shm_align_mask);
>   
>   /* gap between mmap and stack */
> -#define MIN_GAP (128*1024*1024UL)
> -#define MAX_GAP ((TASK_SIZE)/6*5)
> +#define MIN_GAP		(128*1024*1024UL)
> +#define MAX_GAP		((TASK_SIZE)/6*5)

    Could add spaces around *, while touching this anyway? And parens
around TASK_SIZE shouldn't be needed...

> +#define STACK_RND_MASK	(0x7ff >> (PAGE_SHIFT - 12))
>   
>   static int mmap_is_legacy(struct rlimit *rlim_stack)
>   {
> @@ -38,6 +39,15 @@ static int mmap_is_legacy(struct rlimit *rlim_stack)
>   static unsigned long mmap_base(unsigned long rnd, struct rlimit *rlim_stack)
>   {
>   	unsigned long gap = rlim_stack->rlim_cur;
> +	unsigned long pad = stack_guard_gap;
> +
> +	/* Account for stack randomization if necessary */
> +	if (current->flags & PF_RANDOMIZE)
> +		pad += (STACK_RND_MASK << PAGE_SHIFT);

    Parens not needed here.

> +
> +	/* Values close to RLIM_INFINITY can overflow. */
> +	if (gap + pad > gap)
> +		gap += pad;
>   
>   	if (gap < MIN_GAP)
>   		gap = MIN_GAP;
> 


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
