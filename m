Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B4A49B293D
	for <lists+linux-riscv@lfdr.de>; Sat, 14 Sep 2019 03:14:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BeEZ+Fvt0r9OAZJpgAKmea9FxMVgBjdYn2Wxpu4nfzw=; b=n2B3pzhOt6I8sv
	O84uvaKdrMw+A9Lsema/ZEu+jlCvo7TXU4mBTQqGqdUxGYfCWric/cAgvIZ4e0cjqUavTq8hh88Gp
	vDjCWzh5WP2alVzKnd2o3i/WJ0Z+HV904XMGxNwPafadCbgnv9+cwjj0/9aTkqyfn8ts7IJIXrtqz
	D8qBNfTfBPbDVjTjUOt2MTsSW+WhwrVAsUVlzYr1ADesHO45UYggKXr+w+GLKIGpFKoukjkwHxO9n
	ZgrSzJzPL59U0WdrY0OYJsuQgks0zaSufc/16BiKL1aAlVZvRpIp688y1XQQVaZRbOwxVXBbr/nNY
	n5Xx0WEcSbmP2UJpRx/g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i8wdQ-0001eV-LI; Sat, 14 Sep 2019 01:13:56 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i8wdM-0001e6-Lu
 for linux-riscv@lists.infradead.org; Sat, 14 Sep 2019 01:13:54 +0000
Received: by mail-wm1-x342.google.com with SMTP id c10so4440191wmc.0
 for <linux-riscv@lists.infradead.org>; Fri, 13 Sep 2019 18:13:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=date:from:to:cc:subject:in-reply-to:message-id:references
 :user-agent:mime-version;
 bh=1nfpalyEOuWJ/X5aE9JEGwXeZItpyOPkR5jmQAi7LTs=;
 b=Iko/ZIkqx+ZnhOp4oLT/90wFFMHN90VxlMd+9gh+yl4oKK24JMTBv47wgHUWTvuaOu
 PVMcqoTvcpMULwfLsqM+E0UHouw+XVb9TGQtandqoM5ewawGx7wjv/rd36e56tBF8i2T
 6vBUiqSxHrmgWbUeb1YWxooDQ+6USTa18qmkY9VeBnfm/FLb9XzEsOlkO9STrA/v3kb0
 zZtvE14xFBV8mpFaoVkAF6Jf8Zwb59n/VQuv9KDKZGPUfaPo6Es4dPsWOOy8BYYPxK7r
 O/02R1GmKIbJJ7UWOl/+0KuP1ulXcXxfs6d9wuAS33V+0CO2OOWfGwE73o1xItUyvPDQ
 p/dQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:in-reply-to:message-id
 :references:user-agent:mime-version;
 bh=1nfpalyEOuWJ/X5aE9JEGwXeZItpyOPkR5jmQAi7LTs=;
 b=Xf/Fp5FsjOo0G/Ux8RF2a2EzCZRehwu70q0+BoURnnvxQW/a2n+nrsa/ubjRgJ+WNe
 8GQyIyS1wgGEZWlw80ZIYTJMdfo7bgaJ5Up1zuzjYjRXD6Isr6MUvCBfgMa4Ll3AsXQv
 hyUouzfd9BDqKUTfnHaXrcPCb4gwICp+AHe42hRJ1L3fc8PSwZd+wBXjcMujJ0wN8Ycb
 21Bobz8v6IZDX1CD9nR8NT+Lca4lWj42eMYBXdB0I/NPbo5fkR9W/kaPyNEPd6vF6vtB
 T9ZTcOyoNeqZtsfF51UDPBj3q1AWZE4c9lmZlcpOMd8xAJAjMDE5jiIXbIX3MLBRZWiU
 2W+w==
X-Gm-Message-State: APjAAAWbar6xNgp0U36/aZN45vKN9zf2+6hCWOrtjvjce161Mo+cuXoB
 Hm+zDSF5Dax+uXr6MZ67JDzbTTOEbbg=
X-Google-Smtp-Source: APXvYqxaEvRhHQA79nEdCofovkluYdbczdbV3RHf2bXbHZpve0BowsrYmAUlrQjbsYoxhE4QNS3qmg==
X-Received: by 2002:a1c:ed03:: with SMTP id l3mr5523778wmh.29.1568423628909;
 Fri, 13 Sep 2019 18:13:48 -0700 (PDT)
Received: from localhost (193-126-247-196.net.novis.pt. [193.126.247.196])
 by smtp.gmail.com with ESMTPSA id q124sm7118624wma.5.2019.09.13.18.13.47
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 13 Sep 2019 18:13:48 -0700 (PDT)
Date: Fri, 13 Sep 2019 18:13:47 -0700 (PDT)
From: Paul Walmsley <paul.walmsley@sifive.com>
X-X-Sender: paulw@viisi.sifive.com
To: Palmer Dabbelt <palmer@sifive.com>
Subject: Re: [PATCH 1/4] Documentation: riscv: boot: We're not compatible
 with arm64
In-Reply-To: <20190913192433.4316-2-palmer@sifive.com>
Message-ID: <alpine.DEB.2.21.9999.1909131553051.9752@viisi.sifive.com>
References: <20190913192433.4316-1-palmer@sifive.com>
 <20190913192433.4316-2-palmer@sifive.com>
User-Agent: Alpine 2.21.9999 (DEB 301 2018-08-15)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190913_181352_749778_5C10916F 
X-CRM114-Status: GOOD (  19.12  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: atish.patra@wdc.com, linux-riscv@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Fri, 13 Sep 2019, Palmer Dabbelt wrote:

> The documentation for our bootloader claims that it can be made
> compatible with arm64, but that's not true.  There are some differences
> between our format and arm64:
> 
> * We've used the first 32 bits of their 64-bit "res2" as a version number,
>   which we're currently setting to non-zero.

During the review of this patch, I assumed -- maybe incorrectly -- that 
ARM64 didn't require the reserved fields to be zero.  In retrospect, this 
was not a good assumption to make.  It would have been better for me to 
get explicit agreement from the ARM64 folks.

> * We're using their "res4" field as our magic number.
> * We're treating their magic number as our "res3" field,

This looks like the key issue.  Let's rename the 32-bit RISC-V res3 field 
as magic2, and just use it.  Then over time we should be able to deprecate 
the original RISC-V 64-bit magic field.

>   which nominally contains a flag for big endian systems already.  This 
>   can't get set, so we should just drop it -- it's also not described 
>   what the flag means.

This one I'm not seeing.  In both headers, the flags field is in the 
same place: towards the beginning of the headers, before the reserved 
fields:

https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/arch/riscv/include/asm/image.h#n56

https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/arch/arm64/include/asm/image.h#n49

The endianness bit in that field is defined the same way:

https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/Documentation/arm64/booting.rst#n106

https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/Documentation/riscv/boot-image-header.txt#n46

Please let me know if I've misunderstood your point.

> 
> This patch removes the claim that our header can be made compatible with
> arm64.
> 
> Signed-off-by: Palmer Dabbelt <palmer@sifive.com>
> ---
>  Documentation/riscv/boot-image-header.txt | 5 ++---
>  1 file changed, 2 insertions(+), 3 deletions(-)
> 
> diff --git a/Documentation/riscv/boot-image-header.txt b/Documentation/riscv/boot-image-header.txt
> index 1b73fea23b39..77e8e505bc41 100644
> --- a/Documentation/riscv/boot-image-header.txt
> +++ b/Documentation/riscv/boot-image-header.txt
> @@ -21,9 +21,8 @@ The following 64-byte header is present in decompressed Linux kernel image.
>  	u32 res3;		  /* Reserved for additional RISC-V specific header */
>  	u32 res4;		  /* Reserved for PE COFF offset */
>  
> -This header format is compliant with PE/COFF header and largely inspired from
> -ARM64 header. Thus, both ARM64 & RISC-V header can be combined into one common
> -header in future.
> +This header format is compliant with PE/COFF header and largely inspired by,
> +but not compatible with, the ARM64 header.
>  
>  Notes:
>  - This header can also be reused to support EFI stub for RISC-V in future. EFI
> -- 
> 2.21.0
> 
> 
> _______________________________________________
> linux-riscv mailing list
> linux-riscv@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-riscv
> 


- Paul

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
