Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9524111499E
	for <lists+linux-riscv@lfdr.de>; Fri,  6 Dec 2019 00:03:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:Mime-Version:Message-ID:To:In-Reply-To
	:Subject:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=VcK5fYtZOQ1Up6kZW76qzY7nQB78Tgg1EbtbB/usWCw=; b=rEI9EVkkhHv0K7
	GxbcxXumPPrtl43NAWPZTqgKYIuVKF76WURPnn2o73ER2djQyQIUVG8j5z4QZWQMhIXsX+SwVL1tO
	4ACUbi035bizfRPJHyqLOUpyRXWNh8mScwvPrC0rrq//5LTjcQC0tELDh1cg88I+BWKKCV8KwjBBH
	Nde0F110NSGShbuUolLoUIVsCq+jwulw7aypr9nG211+vHAg0iSfH1VB2V26Tr8k3ELH1tmVVHOly
	fRSGwDebsr+/uPp+pDMYuAebWRwYY1jpnhLoeVe29JkJObGMhYKnjhdMsb7vj3aejO5FyDHQO5IF4
	VXIp+wEjfFMqtwA8CxiQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1id09W-0000qN-8Z; Thu, 05 Dec 2019 23:03:18 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1id09T-0000pC-5A
 for linux-riscv@lists.infradead.org; Thu, 05 Dec 2019 23:03:16 +0000
Received: by mail-pl1-x641.google.com with SMTP id bb5so1860500plb.4
 for <linux-riscv@lists.infradead.org>; Thu, 05 Dec 2019 15:03:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:from:subject:in-reply-to:cc:to:message-id:mime-version
 :content-transfer-encoding;
 bh=VcK5fYtZOQ1Up6kZW76qzY7nQB78Tgg1EbtbB/usWCw=;
 b=NJFmAAyKgTfnsH3F4E56Ct2k6Ayz/IExZcUrscTAyzl2wzHYCaE4ceIkYNQVL2xH8m
 dO3cx1VKLTd5K/s8qdB+ir0hP/CdYq+vkLRfEa6sMnJTiZUby6OOiowus4lnLgYrg3P8
 d++ECyd2kfABrIk+gPUFR6KJ58MylENemZtXcyRXVzDuOX0jztfAAUAfQE5r+E1ib5W5
 uXoG9NrN7/RItitpDrYg0AYtINHrQDrF1PyK33Gn4A3ADqt72s3RsOJlzaWnq+CKjdA2
 B9lrwnuRvzEP4MUyYr8+UoTscCHCjLwgl+cywwfMEfeeFw+Yp73pJFeof/junpWwrJwJ
 yAaQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:subject:in-reply-to:cc:to:message-id
 :mime-version:content-transfer-encoding;
 bh=VcK5fYtZOQ1Up6kZW76qzY7nQB78Tgg1EbtbB/usWCw=;
 b=Q63Kji7m6LC365hl3RJeUo17A7ITnDnPBqQrPc+mrbKT9uUXg/Unfx8A92gEdUlowZ
 RMVXimzwtW0YNaxgHa31uPBaIur9ztc83yODokVBZmNBnuQzqz+noF0ikHSIjI4qabKv
 BBctCRH1eoPWgZKiCoZdoQu5QUVxN8U0jLpdTkxwDrh9DvQaZm6MRAaqzGZkYKuVUS2t
 /JQbBCu70xPn4p69hXsDWucbQ7dWOWsvWMQeEoem8l4SHsZbfChI31y4VI1/20tbPeIW
 LklgkbJnwdiI33bSdTzfTkdnWWD2dOvKvO5pvddFgno8veeqCXtoPhwkhuWk4ibVxyUp
 N17w==
X-Gm-Message-State: APjAAAUR05lyYs1HFwDmiB+RghvMK2p4o3BuPWy/pWGRwobeAZN+S8nY
 uFiNssQ1yzpZMfr2l6os8R1p6Q==
X-Google-Smtp-Source: APXvYqzkuo1UfAwnq27732Hsurn/l0iO74AhjbK8hskAeect2c0rRTxFhfEj90V6CNHiujMV9r8GTQ==
X-Received: by 2002:a17:902:8d81:: with SMTP id
 v1mr11397941plo.289.1575586991609; 
 Thu, 05 Dec 2019 15:03:11 -0800 (PST)
Received: from localhost ([2620:0:1000:2514:7f69:cd98:a2a2:a03d])
 by smtp.gmail.com with ESMTPSA id n26sm12847040pgd.46.2019.12.05.15.03.10
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 05 Dec 2019 15:03:10 -0800 (PST)
Date: Thu, 05 Dec 2019 15:03:10 -0800 (PST)
X-Google-Original-Date: Thu, 05 Dec 2019 13:34:44 PST (-0800)
From: Palmer Dabbelt <palmerdabbelt@google.com>
X-Google-Original-From: Palmer Dabbelt <palmer@dabbelt.com>
Subject: Re: [PATCH] RISC-V: Typo fixes in image header and documentation.
In-Reply-To: <4912c007ab6c19321c8c988ae2328efbfb3e582d.camel@wdc.com>
To: Atish Patra <Atish.Patra@wdc.com>
Message-ID: <mhng-3a815562-1222-4737-a77c-6dab9948db79@palmerdabbelt-glaptop>
Mime-Version: 1.0 (MHng)
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191205_150315_197272_FBD379E6 
X-CRM114-Status: GOOD (  14.37  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: aou@eecs.berkeley.edu, corbet@lwn.net, linux-doc@vger.kernel.org,
 linux-kernel@vger.kernel.org, mchehab+samsung@kernel.org, palmer@sifive.com,
 Paul Walmsley <paul.walmsley@sifive.com>, merker@debian.org,
 linux-riscv@lists.infradead.org
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Tue, 26 Nov 2019 14:02:20 PST (-0800), Atish Patra wrote:
> On Tue, 2019-10-08 at 18:06 -0700, Atish Patra wrote:
>> There are some typos in boot image header and riscv boot
>> documentation.
>> 
>> Fix the typos.
>> 
>> Signed-off-by: Atish Patra <atish.patra@wdc.com>
>> ---
>>  Documentation/riscv/boot-image-header.rst | 4 ++--
>>  arch/riscv/include/asm/image.h            | 4 ++--
>>  2 files changed, 4 insertions(+), 4 deletions(-)
>> 
>> diff --git a/Documentation/riscv/boot-image-header.rst
>> b/Documentation/riscv/boot-image-header.rst
>> index 7b4d1d747585..8efb0596a33f 100644
>> --- a/Documentation/riscv/boot-image-header.rst
>> +++ b/Documentation/riscv/boot-image-header.rst
>> @@ -22,7 +22,7 @@ The following 64-byte header is present in
>> decompressed Linux kernel image::
>>  	u64 res2 = 0;		  /* Reserved */
>>  	u64 magic = 0x5643534952; /* Magic number, little endian,
>> "RISCV" */
>>  	u32 magic2 = 0x56534905;  /* Magic number 2, little endian,
>> "RSC\x05" */
>> -	u32 res4;		  /* Reserved for PE COFF offset */
>> +	u32 res3;		  /* Reserved for PE COFF offset */
>>  
>>  This header format is compliant with PE/COFF header and largely
>> inspired from
>>  ARM64 header. Thus, both ARM64 & RISC-V header can be combined into
>> one common
>> @@ -34,7 +34,7 @@ Notes
>>  - This header can also be reused to support EFI stub for RISC-V in
>> future. EFI
>>    specification needs PE/COFF image header in the beginning of the
>> kernel image
>>    in order to load it as an EFI application. In order to support EFI
>> stub,
>> -  code0 should be replaced with "MZ" magic string and res5(at offset
>> 0x3c) should
>> +  code0 should be replaced with "MZ" magic string and res3(at offset
>> 0x3c) should
>>    point to the rest of the PE/COFF header.
>>  
>>  - version field indicate header version number
>> diff --git a/arch/riscv/include/asm/image.h
>> b/arch/riscv/include/asm/image.h
>> index 344db5244547..4f8061a5ac4a 100644
>> --- a/arch/riscv/include/asm/image.h
>> +++ b/arch/riscv/include/asm/image.h
>> @@ -42,7 +42,7 @@
>>   * @res2:		reserved
>>   * @magic:		Magic number (RISC-V specific; deprecated)
>>   * @magic2:		Magic number 2 (to match the ARM64 'magic'
>> field pos)
>> - * @res4:		reserved (will be used for PE COFF offset)
>> + * @res3:		reserved (will be used for PE COFF offset)
>>   *
>>   * The intention is for this header format to be shared betweenres4
>> multiple
>>   * architectures to avoid a proliferation of image header formats.
>> @@ -59,7 +59,7 @@ struct riscv_image_header {
>>  	u64 res2;
>>  	u64 magic;
>>  	u32 magic2;
>> -	u32 res4;
>> +	u32 res3;
>>  };
>>  #endif /* __ASSEMBLY__ */
>>  #endif /* __ASM_IMAGE_H */
> 
> ping ?

Reviewed-by: Palmer Dabbelt <palmerdabbelt@google.com>

I'm assuming this is not going in through the RISC-V tree as it mostly touches
Documentation/.

