Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DA23B15F795
	for <lists+linux-riscv@lfdr.de>; Fri, 14 Feb 2020 21:18:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=y3gYCi9ZzlX7wqHDOBfODNbb0bZDnUGIBgPP77xqpNM=; b=Vos0+y5HoZktgc
	n7PZVJ6dpVQYZNq+Tziokipo1cuy+GjnS0iv6lQ4qL9AcEz6hDoG8oODTk0WabQYCkxZ6Te5Ix+uy
	LU7S8vSyRc3fAI4On8eJOkawCmj1HQ7g6mo16cIWOP0dUROuYPCxfyuvfdHrK0TMMyFW4z8DAhr+p
	F6KmZprszpkUib2ZjeJmvoDu/LEDuz4aprzrAH+fj5Ru1UDHZYpIYncZFVERrc5JYvI6cJ7iKSz00
	Xj4U5A+GT4g5QTgyYIZ8cGNWpB6ua9VVzoM2+pQ6KtvUeIO8Adft5jTFwAJsOVxbMEJ1LyTyfjSHU
	KdUXQpuFgerOdPrFPZng==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j2hPg-0003tl-Ld; Fri, 14 Feb 2020 20:18:12 +0000
Received: from mail-qk1-x744.google.com ([2607:f8b0:4864:20::744])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2hPd-0003sn-Md
 for linux-riscv@lists.infradead.org; Fri, 14 Feb 2020 20:18:11 +0000
Received: by mail-qk1-x744.google.com with SMTP id d11so10425629qko.8
 for <linux-riscv@lists.infradead.org>; Fri, 14 Feb 2020 12:18:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:autocrypt:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=y3gYCi9ZzlX7wqHDOBfODNbb0bZDnUGIBgPP77xqpNM=;
 b=DABwjNmyv/jsst7SMkTNZljaym9lNX/W/Sor9Tq9QYzCZRjiXarXjk/KwAclWHA+iV
 qIYTz1/v1sERzDuNKgsL+xBFl5UFurjQsiZDPWxZ3OefOMjXP33dN/mDToKwJUphoTkr
 wAd7ovZz4u5ENGejyTsHIaZae5KmQor2mAO0m+FoXJD2QrX49OJ+rKL5UbjxCVv1rGmb
 JMs5gNTiYYwyzT6XUhDOLss0L4VinCSPL617b9qtfTlgSFO+WW4e99vuOpJ7T51mI/n8
 E/hqoNf7U35zESKpVtwaYJRv3DEIMqBv3TcZ0AuIvAt8a+pJnDJWB+/MzWD1NwQ96afk
 9WaQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:autocrypt
 :message-id:date:user-agent:mime-version:in-reply-to
 :content-language:content-transfer-encoding;
 bh=y3gYCi9ZzlX7wqHDOBfODNbb0bZDnUGIBgPP77xqpNM=;
 b=OMLlN45P7YNQ3VqLnJygv560jKbdfFTt3kXk+DIPdvLzjYXooaICXrVLGyFCmsveRt
 xSdvrkd5fLjtQLjvkU5nzY1dec/E1t7P3/IgMMgvRuekuEXly8KvMIb5afyxFWESxhP9
 Z0h3UrVUlN3uLOnxCbUlSyixHwI3RVwxaW5spBOrTzwNG+eL65w8/w9ev1NLw2gahf95
 XUdMdn/XhlCGg0JDF/zBXfHA3pPwZjExGh0kByGLBSHBUtoBw3yymE+udDezjcdrBMbS
 xCTvjZMTPJaDAYXLrSKwxeuL+aPQ6xFpWHDVMPeX5rpMNr7wUZAqM2r1bJzi+qoAV1rj
 s9yA==
X-Gm-Message-State: APjAAAUdh+1ewUmOaI0KFPtXvkyG9kipeuA7ojMBiNtLzUb9Vfal5io4
 hAxgIf8mVm+Xi4inQ//rsUY=
X-Google-Smtp-Source: APXvYqxHF9rZeuh43Uw+pyXKyswvTNMRaLxYTBa9Lq4Hqr5V9sdBiMk+7N+1K61c1jM1a4lEFkKHDg==
X-Received: by 2002:a05:620a:988:: with SMTP id
 x8mr4080512qkx.466.1581711486980; 
 Fri, 14 Feb 2020 12:18:06 -0800 (PST)
Received: from [192.168.1.117] ([75.102.135.197])
 by smtp.googlemail.com with ESMTPSA id t26sm3864316qkt.17.2020.02.14.12.18.05
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 14 Feb 2020 12:18:06 -0800 (PST)
Subject: Re: [PATCH 02/10] riscv: Force flat memory model with no-mmu
To: Damien Le Moal <damien.lemoal@wdc.com>, linux-riscv@lists.infradead.org,
 Palmer Dabbelt <palmer@dabbelt.com>
References: <20200212103432.660256-1-damien.lemoal@wdc.com>
 <20200212103432.660256-3-damien.lemoal@wdc.com>
From: Sean Anderson <seanga2@gmail.com>
Autocrypt: addr=seanga2@gmail.com; prefer-encrypt=mutual; keydata=
 mQENBFe74PkBCACoLC5Zq2gwrDcCkr+EPGsT14bsxrW07GiYzQhLCgwnPdEpgU95pXltbFhw
 46GfyffABWxHKO2x+3L1S6ZxC5AiKbYXo7lpnTBYjamPWYouz+VJEVjUx9aaSEByBah5kX6a
 lKFZWNbXLAJh+dE1HFaMi3TQXXaInaREc+aO1F7fCa2zNE75ja+6ah8L4TPRFZ2HKQzve0/Y
 GXtoRw97qmnm3U36vKWT/m2AiLF619F4T1mHvlfjyd9hrVwjH5h/2rFyroXVXBZHGA9Aj8eN
 F2si35dWSZlIwXkNu9bXp0/pIu6FD0bI+BEkD5S7aH1G1iAcMFi5Qq2RNa041DfQSDDHABEB
 AAG0K1NlYW4gR2FsbGFnaGVyIEFuZGVyc29uIDxzZWFuZ2EyQGdtYWlsLmNvbT6JAVcEEwEK
 AEECGwMFCwkIBwIGFQgJCgsCBBYCAwECHgECF4ACGQEWIQSQYR1bzo1I0gPoYCg+6I/stKEQ
 bgUCXT+S2AUJB2TlXwAKCRA+6I/stKEQbhNOB/9ooea0hU9Sgh7PBloU6CgaC5mlqPLB7NTp
 +JkB+nh3Fqhk+qLZwzEynnuDLl6ESpVHIc0Ym1lyF4gT3DsrlGT1h0Gzw7vUwd1+ZfN0CuIx
 Rn861U/dAUjvbtN5kMBqOI4/5ea+0r7MACcIVnKF/wMXBD8eypHsorT2sJTzwZ6DRCNP70C5
 N1ahpqqNmXe0uLdP0pu55JCqhrGw2SinkRMdWyhSxT56uNwIVHGhLTqH7Q4t1N6G1EH626qa
 SvIJsWlNpll6Y3AYLDw2/Spw/hqieS2PQ/Ky3rPZnvJt7/aSNYsKoFGX0yjkH67Uq8Lx0k1L
 w8jpXnbEPQN3A2ZJCbeMuQENBF0/k2UBCADhvSlHblNc/aRAWtCFDblCJJMN/8Sd7S9u4ZRS
 w1wIB4tTF7caxc8yfCHa+FjMFeVu34QPtMOvd/gfHz0mr+t0PiTAdDSbd6o7tj+g5ylm+FhT
 OTUtJQ6mx6L9GzMmIDEbLxJMB9RfJaL2mT5JkujKxEst6nlHGV/lEQ54xBl5ImrPvuR5Dbnr
 zWQYlafb1IC5ZFwSMpBeSfhS7/kGPtFY3NkpLrii/CF+ME0DYYWxlkDIycqF3fsUGGfb3HIq
 z2l95OB45+mCs9DrIDZXRT6mFjLcl35UzuEErNIskCl9NKlbvAMAl+gbDH275SnE44ocC4qu
 0tMe7Z5jpOy6J8nNABEBAAGJATwEGAEKACYWIQSQYR1bzo1I0gPoYCg+6I/stKEQbgUCXT+T
 ZQIbDAUJAeEzgAAKCRA+6I/stKEQbjAGB/4mYRqZTTEFmcS+f+8zsmjt2CfWvm38kR+sJFWB
 vz82pFiUWbUM5xvcuOQhz698WQnIazbDGSYaOipyVNS52YiuYJDqMszzgw++DrcSuu0oRYWN
 EWCkJjxMqjGg8uY0OZ6FJG+gYRN5wMFErGfV1OqQ7l00FYA9OzpOEuW9PzPZEutFnAbbh77i
 zvxbQtT7IJCL24A4KutNYKmWg98im4mCzQcJCxE86Bv69ErLVPUyYbp4doLadScilXlvkkjL
 iq1wOt3rRzOuw+qnWVgWGBPxdDftz0Wck941tYF9XE0aMgkf4o1sGoDZFUFPCQdfEYPzzV7O
 S5hN3/mP5UeooFHb
Message-ID: <05106cc4-3d79-7288-cd1f-0c996e5b1657@gmail.com>
Date: Fri, 14 Feb 2020 15:18:05 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <20200212103432.660256-3-damien.lemoal@wdc.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200214_121809_767319_0026D05E 
X-CRM114-Status: GOOD (  15.36  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:744 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [seanga2[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [seanga2[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Anup Patel <Anup.Patel@wdc.com>, Paul Walmsley <paul.walmsley@sifive.com>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Hi,

On 2/12/20 5:34 AM, Damien Le Moal wrote:
> Compilation errors trigger if ARCH_SPARSEMEM_ENABLE is enabled for
> a nommu kernel. Since the sparsemem model does not make sense anyway
> for the nommu case, do not allow selecting this option to always use
> the flatmem model.
> 
> Signed-off-by: Damien Le Moal <damien.lemoal@wdc.com>
> ---
>  arch/riscv/Kconfig | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/arch/riscv/Kconfig b/arch/riscv/Kconfig
> index 73f029eae0cc..1a3b5a5276be 100644
> --- a/arch/riscv/Kconfig
> +++ b/arch/riscv/Kconfig
> @@ -121,6 +121,7 @@ config ARCH_FLATMEM_ENABLE
>  
>  config ARCH_SPARSEMEM_ENABLE
>  	def_bool y
> +	depends on MMU
>  	select SPARSEMEM_VMEMMAP_ENABLE
>  
>  config ARCH_SELECT_MEMORY_MODEL
> 

Just for some background, why did you choose NOMMU? Afaik the K210 has
an MMU following the RISC-V privileged specification 1.9

--Sean

