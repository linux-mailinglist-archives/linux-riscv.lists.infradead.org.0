Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9114D36F6D
	for <lists+linux-riscv@lfdr.de>; Thu,  6 Jun 2019 11:05:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SH3yB/pe6kp1FU9LqNUBa+RfjOeSLofn8uu8GFHraWQ=; b=F+op90HAtFRqav
	vNMapYTF28Vm0+y1Z3+VXKTr4xKApZE3wOXAFLntikBxldkJTNf7HRJbAQnNv8/6K/8HlVdNlzFLa
	yWJ/cVYowfFTt2Uio3co1yKHhJ314zWjk6SRdIu0VRJbnk/5m4rO7iAb9gAo+e+oppBj9eK+kB/Hj
	0CDftpAh7uIXdEaYphw53EZjPxPfmMDxt3mcC9AzhueCEKjwklMve5blQt0bFvbUTZqVuQfxebX7Z
	LxMT09H5gIi0Pzw631/5NP4PD7e+jUx9yJ5m/1ZsH7LBVw9ZLLwmh7WZcHr0t0JtkZosGzS30oyaU
	s7o8NIZ5Cj2Pn5WoFe1A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYoKx-0005ca-4d; Thu, 06 Jun 2019 09:05:31 +0000
Received: from hch by bombadil.infradead.org with local (Exim 4.90_1 #2 (Red
 Hat Linux)) id 1hYoKk-0005KD-CZ; Thu, 06 Jun 2019 09:05:18 +0000
Date: Thu, 6 Jun 2019 02:05:18 -0700
From: Christoph Hellwig <hch@infradead.org>
To: Palmer Dabbelt <palmer@sifive.com>
Subject: Re: [PATCH] RISC-V: Break load reservations during switch_to
Message-ID: <20190606090518.GB1369@infradead.org>
References: <20190605231735.26581-1-palmer@sifive.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190605231735.26581-1-palmer@sifive.com>
User-Agent: Mutt/1.9.2 (2017-12-15)
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
Cc: me@carlosedp.com, linux-kernel@vger.kernel.org, joel@sing.id.au,
 Paul Walmsley <paul.walmsley@sifive.com>, linux-riscv@lists.infradead.org,
 marco@decred.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Wed, Jun 05, 2019 at 04:17:35PM -0700, Palmer Dabbelt wrote:
>  	REG_S ra,  TASK_THREAD_RA_RA(a3)
> +	/*
> +	 * The Linux ABI allows programs to depend on load reservations being
> +	 * broken on context switches, but the ISA doesn't require that the
> +	 * hardware ever breaks a load reservation.  The only way to break a
> +	 * load reservation is with a store conditional, so we emit one here.
> +	 * Since nothing ever takes a load reservation on TASK_THREAD_RA_RA we
> +	 * know this will always fail, but just to be on the safe side this
> +	 * writes the same value that was unconditionally written by the
> +	 * previous instruction.
> +	 */
> +#if (TASK_THREAD_RA_RA != 0)

I don't think this check works as intended.  TASK_THREAD_RA_RA is a
parameterized macro, thus the above would never evaluate to 0. The
error message also is rather odd while we're at it.

> +#if (__riscv_xlen == 64)
> +	sc.d  x0, ra, 0(a3)
> +#else
> +	sc.w  x0, ra, 0(a3)
> +#endif

I'd rather add an macro ala REG_S to asm.h and distinguish between the
xlen variants there:

#define REG_SC		__REG_SEL(sc.d, sc.w)

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
