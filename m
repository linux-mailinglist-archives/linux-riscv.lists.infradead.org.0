Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 96C599EA7A
	for <lists+linux-riscv@lfdr.de>; Tue, 27 Aug 2019 16:11:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JPzx4f/YR+1+bTvHeNAcGfOm6pXttwfUNvV5ErkzKCA=; b=Rugc5da3PpFoLW
	8lbPWrFPnAp/NFo3o5IA8CYb5DERVrlkR1+fLxOkCZV0OL9+9HDiYSf5okoQLTNJd2MMLi/hoHwRF
	cdiztoPoZ263rLRoaI4gtIwAfyPKM7YT1p5Wd/HqHp6R59SDCAYD3iKqmOV+d+edkN27FQPJOew2O
	j/h33HD725Y+3Wo6imNFdE3RKAU9n0DU+UwdKjQEkKl3HbmYuxP/BD3y7o54XEiXQNHsK0VLQKBGl
	+AWFuYPd3XvAtIT3G4rHMYjoB4bpAPsx75Kuy1+Z7JkgQRcp/WHNPnZbqpOg7DPp9sfx2CxTspCtz
	499U8utCd4jMql9sdxRg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2cC4-0007KW-Vb; Tue, 27 Aug 2019 14:11:33 +0000
Received: from hch by bombadil.infradead.org with local (Exim 4.92 #3 (Red Hat
 Linux)) id 1i2cC2-0007KK-LQ; Tue, 27 Aug 2019 14:11:30 +0000
Date: Tue, 27 Aug 2019 07:11:30 -0700
From: Christoph Hellwig <hch@infradead.org>
To: Atish Patra <atish.patra@wdc.com>
Subject: Re: [RFC PATCH 2/2] RISC-V: Add basic support for SBI v0.2
Message-ID: <20190827141130.GC21855@infradead.org>
References: <20190826233256.32383-1-atish.patra@wdc.com>
 <20190826233256.32383-3-atish.patra@wdc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190826233256.32383-3-atish.patra@wdc.com>
User-Agent: Mutt/1.11.4 (2019-03-13)
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
Cc: Albert Ou <aou@eecs.berkeley.edu>, Alan Kao <alankao@andestech.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Anup Patel <anup@brainfault.org>, Palmer Dabbelt <palmer@sifive.com>,
 linux-kernel@vger.kernel.org, Mike Rapoport <rppt@linux.ibm.com>,
 Alexios Zavras <alexios.zavras@intel.com>, Gary Guo <gary@garyguo.net>,
 Paul Walmsley <paul.walmsley@sifive.com>, linux-riscv@lists.infradead.org,
 Thomas Gleixner <tglx@linutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

> +#define SBI_EXT_BASE 0x10

I think you want an enum enumerating the extensions.

> +#define SBI_CALL_LEGACY(ext, fid, arg0, arg1, arg2, arg3) ({	\
>  	register uintptr_t a0 asm ("a0") = (uintptr_t)(arg0);	\
>  	register uintptr_t a1 asm ("a1") = (uintptr_t)(arg1);	\
>  	register uintptr_t a2 asm ("a2") = (uintptr_t)(arg2);	\
>  	register uintptr_t a3 asm ("a3") = (uintptr_t)(arg3);	\
> -	register uintptr_t a7 asm ("a7") = (uintptr_t)(which);	\
> +	register uintptr_t a6 asm ("a6") = (uintptr_t)(fid);	\
> +	register uintptr_t a7 asm ("a7") = (uintptr_t)(ext);	\

This seems to break the calling convention.  I also think we should go
back to the Unix platform working group and make the calling convention
backwards compatible.  There is really no advantage or disadvantag
in swapping a6 and a7 in the calling convention itself, but doing so
means you can just push the ext field in always and it will be
ignored by the old sbi.

> +struct sbiret riscv_sbi_ecall(int ext, int fid, int arg0, int arg1,
> +			       int arg2, int arg3);
> +
> +#define SBI_CALL_0(ext, fid) riscv_sbi_ecall(ext, fid, 0, 0, 0, 0)
> +#define SBI_CALL_1(ext, fid, arg0) riscv_sbi_ecall(ext, fid, arg0, 0, 0, 0)
> +#define SBI_CALL_2(ext, fid, arg0, arg1) \
> +		riscv_sbi_ecall(ext, fid, arg0, arg1, 0, 0)
> +#define SBI_CALL_3(ext, fid, arg0, arg1, arg2) \
> +		riscv_sbi_ecall(ext, fid, arg0, arg1, arg2, 0)
> +#define SBI_CALL_4(ext, fid, arg0, arg1, arg2, arg3) \
> +		riscv_sbi_ecall(ext, fid, arg0, arg1, arg2, arg3)

Again, no point in having these wrappers.

> +struct sbiret riscv_sbi_ecall(int ext, int fid, int arg0, int arg1,
> +			     int arg2, int arg3)
> +{
> +	struct sbiret ret;
> +
> +	register uintptr_t a0 asm ("a0") = (uintptr_t)(arg0);
> +	register uintptr_t a1 asm ("a1") = (uintptr_t)(arg1);
> +	register uintptr_t a2 asm ("a2") = (uintptr_t)(arg2);
> +	register uintptr_t a3 asm ("a3") = (uintptr_t)(arg3);
> +	register uintptr_t a6 asm ("a6") = (uintptr_t)(fid);
> +	register uintptr_t a7 asm ("a7") = (uintptr_t)(ext);
> +	asm volatile ("ecall"
> +		      : "+r" (a0), "+r" (a1)
> +		      : "r" (a2), "r" (a3), "r" (a6), "r" (a7)
> +		      : "memory");
> +	ret.error = a0;
> +	ret.value = a1;
> +
> +	return ret;

Again much simpler done in pure asm..

> +	/* legacy SBI version*/
> +	sbi_firmware_version = 0x1;
> +	ret = sbi_get_spec_version();
> +	if (!ret.error)
> +		sbi_firmware_version = ret.value;

Why not:

	ret = sbi_get_spec_version();
	if (ret.error)
		sbi_firmware_version = 0x1; /* legacy SBI */
	else
		sbi_firmware_version = ret.value;

btw, I'd find a calling convention that returns the value as a pointer
much nicer than the return by a struct.  Yes, the RISC-V ABI still
returns that in registers, but it is a pain in the b**t to use.  Without
that we could simply pass the variable to fill by reference.

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
