Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 16037183875
	for <lists+linux-riscv@lfdr.de>; Thu, 12 Mar 2020 19:21:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=m7+UQZxAXIzvp2g/1jHUXHxCT5rJkGme3Q6Vi8UTV7g=; b=jzJ57VFqbwcxPX
	nDrt7WfiHD0dKshijSPWlfqeiTE+dgADqJV6k2t0drYUfg23AmWsBQp7t18Whk2Db0Z9VdnmJB8gO
	4u4eR+Q0S9p2ZlnXFo9oQkJiqFzCqHLDfOhIFFoj8A+tV0an1VWAFbMYfQ/XYwPsvJpozXm+YxWr/
	xUVVkUjfWm0GSzJaCY9VQcPJKq20qr9KEe4oBVhrmgm4WCVk0cSycx+Yfybkwrd9MXGwrl8hPyvLI
	REw5UXerYgtEF/Fc66v+lQkYSPBv98tByBnmg9O3HSxtUe3Vt8vMqZ7uviZImrTYLx/b4irkIStyO
	DUIeUweNKzFhpMpSMIxw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCSSG-0005aX-2o; Thu, 12 Mar 2020 18:21:12 +0000
Received: from mail-qk1-x741.google.com ([2607:f8b0:4864:20::741])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCSSD-0005aA-8D
 for linux-riscv@lists.infradead.org; Thu, 12 Mar 2020 18:21:10 +0000
Received: by mail-qk1-x741.google.com with SMTP id z25so2999889qkj.4
 for <linux-riscv@lists.infradead.org>; Thu, 12 Mar 2020 11:21:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:autocrypt:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=m7+UQZxAXIzvp2g/1jHUXHxCT5rJkGme3Q6Vi8UTV7g=;
 b=CPjgROW/hQjkvl7qFLb+sEasOcxXFK6JeXltkuvWcoesgopiFeyaZ+xMelW3DsfBkh
 iBbVlxaJXkKKnxE1G9vlDJ/n3b+ZaRNjip9BY44tJ6PnhCbzEAWTeNGW6wopgVAuTglR
 0unscYxAaP2Pp4Et+JLjBMartcpAznDLQ44dRrFc3iAgPgj98Dara8RjmrhqmHbPRtHH
 feJxayT6POe5t3ZVDvyocgI4SIQMYvSKl5FLlXBouK8Ccq7H5fE3dzrxrcQnADX+luYp
 vSlm2V1lISMqdG/w589IovQWi7xh/tN58F00W5B/jDvcny+l0ZxKqFCNhT4a05Eoi3ps
 uVLg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:autocrypt
 :message-id:date:user-agent:mime-version:in-reply-to
 :content-language:content-transfer-encoding;
 bh=m7+UQZxAXIzvp2g/1jHUXHxCT5rJkGme3Q6Vi8UTV7g=;
 b=XLNzrEmFdMSUymQCoZDpgcRTRPZDeel8SlsmDBcHBopcJ6YjHaMZoDw7GqIo4JkvYA
 mIjy6FVKeKFwuQAf+Xox6fT7xItK51fShI9EfgqN9a+Ythko6BDEAu8SkO/7a9g93Gfj
 6hROW7zBIgtuSfUcQy/8xtQs+zWfnSjccpRsq67QxV+utrBxprHoJI2uY0l/ju5x5U1v
 NbaAtS3gqvGjZmljuTqaDJWVzHwISULZ554okCju3JhQuSqyjUrtiVeidv/RSv/wQND5
 JBvb1CttqmCMuinrjNbA0D74HcS9D/lqodnb9Lk6i+AQjBb3RX51cpsqaYeTqvKntCVw
 7c3w==
X-Gm-Message-State: ANhLgQ3/ZjJiLHhlHaCKXar3kbaGUDf0JhfLcyux20fIurOLtDI0fSsK
 SHd4O+ohiGfzE3i3uUiCQdVn2v5s
X-Google-Smtp-Source: ADFU+vuCnKUEWtKZUTQVkTPHD3oc9f14/x2ptY39upbejtWmuIcm+EmycLyR2WPTdyfYNtBXxsTycw==
X-Received: by 2002:a05:620a:90e:: with SMTP id
 v14mr8728557qkv.128.1584037267074; 
 Thu, 12 Mar 2020 11:21:07 -0700 (PDT)
Received: from [192.168.1.201] (pool-71-163-33-7.washdc.fios.verizon.net.
 [71.163.33.7]) by smtp.googlemail.com with ESMTPSA id
 f26sm12787910qkl.119.2020.03.12.11.21.06
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 12 Mar 2020 11:21:06 -0700 (PDT)
Subject: Re: [PATCH v2 3/9] riscv: Add SOC early init support
To: Damien Le Moal <damien.lemoal@wdc.com>, linux-riscv@lists.infradead.org,
 Palmer Dabbelt <palmer@dabbelt.com>
References: <20200312051107.1454880-1-damien.lemoal@wdc.com>
 <20200312051107.1454880-4-damien.lemoal@wdc.com>
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
Message-ID: <b19153eb-dba4-15b2-234b-0d14d23aa164@gmail.com>
Date: Thu, 12 Mar 2020 14:21:05 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <20200312051107.1454880-4-damien.lemoal@wdc.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200312_112109_296829_09A67BD9 
X-CRM114-Status: GOOD (  14.22  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:741 listed in]
 [list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [seanga2[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [seanga2[at]gmail.com]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Anup Patel <Anup.Patel@wdc.com>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On 3/12/20 1:11 AM, Damien Le Moal wrote:
> Add a mechanism for early SoC initialization for platforms that need
> additional hardware initialization not possible through the regular
> device tree and drivers mechanism. With this, a SoC specific
> initialization function can be called very early, before DTB parsing
> is done by parse_dtb() in Linux RISC-V kernel setup code.

Why does it need to be called that early (e.g. before parsing dtb)?

> 
> This can be very useful for early hardware initialization for No-MMU
> kernels booted directly in M-mode because it is quite likely that no
> other booting stage exist prior to the No-MMU kernel.
> 
> Example use of a SoC early initialization is as follows:
> 
> static void vendor_abc_early_init(const void *fdt)
> {
> 	/*
> 	 * some early init code here that can use simple matches
> 	 * against the flat device tree file.
> 	 */
> }
> SOC_EARLY_INIT_DECLARE("vendor,abc", abc_early_init);
> 
> This early initialization function is executed only if the flat device
> tree for the board has a 'compatible = "vendor,abc"' entry;
> 
> Signed-off-by: Damien Le Moal <damien.lemoal@wdc.com>
> Signed-off-by: Anup Patel <anup.patel@wdc.com>
> Reviewed-by: Palmer Dabbelt <palmerdabbelt@google.com>

--Sean

