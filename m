Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 276F455B4A
	for <lists+linux-riscv@lfdr.de>; Wed, 26 Jun 2019 00:34:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kCQehv4x9+Xijmc2N98JgIC6FZo2ZRkrLULU50oOubo=; b=VX3DQ7xdNQU5Ny
	awpHBvU8Lf7dhLYaRA3gZ3co32vtoH2jbLCByPFLt1pwERU6jS/c4gci4MDQp/CiuC9vLwjDB/MT8
	4eYYZ4Jg1i+w3w6TWIA0EHWVHyAD+2BTrt1IY3mPoJdDLOBwHPX7uoI/azug7Ol+gUhd0zBwgO+jn
	2j9TDS0o3mpg2qUIZ/jl91zC/amj5V42uHFxwaOTldBN2iHAz1RIHi/sMgrx0n9INEPf6h/mpho20
	O7aUdJjvVAxBDx5cJbU5CXMlpdbtBpcf7Y7qLFUr+hYUtkgEgVDrMqCcq4XMg1V5900smeIXF1zS+
	MeC8zZ+NMdnK0ImKuo1A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfu1D-00023d-CM; Tue, 25 Jun 2019 22:34:27 +0000
Received: from zeniv.linux.org.uk ([195.92.253.2])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hftyh-00074N-9r; Tue, 25 Jun 2019 22:31:53 +0000
Received: from viro by ZenIV.linux.org.uk with local (Exim 4.92 #3 (Red Hat
 Linux)) id 1hftwb-0001ZR-4N; Tue, 25 Jun 2019 22:29:41 +0000
Date: Tue, 25 Jun 2019 23:29:41 +0100
From: Al Viro <viro@zeniv.linux.org.uk>
To: Christoph Hellwig <hch@lst.de>
Subject: Re: [PATCH 08/17] binfmt_flat: consolidate two version of
 flat_v2_reloc_t
Message-ID: <20190625222941.GA1343@ZenIV.linux.org.uk>
References: <20190613070903.17214-1-hch@lst.de>
 <20190613070903.17214-9-hch@lst.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190613070903.17214-9-hch@lst.de>
User-Agent: Mutt/1.11.3 (2019-02-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190625_153151_439427_DDDC0FEC 
X-CRM114-Status: GOOD (  12.78  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.92.253.2 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 2.5 SUSPICIOUS_RECIPS      Similar addresses in recipient list
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
Cc: uclinux-h8-devel@lists.sourceforge.jp, linux-xtensa@linux-xtensa.org,
 Michal Simek <monstr@monstr.eu>, linux-c6x-dev@linux-c6x.org,
 linux-sh@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-m68k@lists.linux-m68k.org, linux-riscv@lists.infradead.org,
 Greg Ungerer <gerg@linux-m68k.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Thu, Jun 13, 2019 at 09:08:54AM +0200, Christoph Hellwig wrote:
> Two branches of the ifdef maze actually have the same content, so merge
> them.
> 
> Signed-off-by: Christoph Hellwig <hch@lst.de>
> ---
>  include/linux/flat.h | 6 ++----
>  1 file changed, 2 insertions(+), 4 deletions(-)
> 
> diff --git a/include/linux/flat.h b/include/linux/flat.h
> index 2b7cda6e9c1b..19c586b74b99 100644
> --- a/include/linux/flat.h
> +++ b/include/linux/flat.h
> @@ -69,15 +69,13 @@ struct flat_hdr {
>  typedef union {
>  	unsigned long	value;
>  	struct {
> -# if defined(mc68000) && !defined(CONFIG_COLDFIRE)
> +#if defined(__LITTLE_ENDIAN_BITFIELD) || \
> +    (defined(mc68000) && !defined(CONFIG_COLDFIRE))
>  		signed long offset : 30;
>  		unsigned long type : 2;
>  # elif defined(__BIG_ENDIAN_BITFIELD)
>  		unsigned long type : 2;
>  		signed long offset : 30;
> -# elif defined(__LITTLE_ENDIAN_BITFIELD)
> -		signed long offset : 30;
> -		unsigned long type : 2;
>  # else
>  #   	error "Unknown bitfield order for flat files."
>  # endif
> -- 
> 2.20.1
> 

FWIW, I wonder if keeping that type is worth bothering.
Something like
old_reloc(__be32 reloc)
{
	u32 v = be32_to_cpu(reloc);
	int offset, type;

#if (defined(mc68000) && !defined(CONFIG_COLDFIRE))
	/* old m68k uses unusual format - type is in lower bits of octet 3 */
	type = v % 4;
	offset = (int)v / 4;
#else
	/* everything else (including coldfire) has it in upper bits of octet 0 */
	type = v >> 30;
	offset = (int)(v << 2) >> 2; /* or (v & 0x1fffffff) - (v & 0x20000000) * 4 */
#endif
	...

and to hell with bitfields, aliasing unions, etc.  Unless I'm misreading
the whole thing, that is...  Greg?

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
