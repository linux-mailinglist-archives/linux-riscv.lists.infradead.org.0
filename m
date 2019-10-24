Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A1EBCE3659
	for <lists+linux-riscv@lfdr.de>; Thu, 24 Oct 2019 17:18:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:
	MIME-Version:References:Message-ID:In-Reply-To:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=WP1hiF5IYnfjDS5dGFA0EaEvNtWzRIvRGPi673VKH+g=; b=kkFALXbGrMu7/ZqpDTiJTVR8m
	orFI8V14jRX7GztVLSsihTQE1s0Ao0OT2apyOiLsIoLqiHPrmAd46LnV8UHorXjsJ4MufL8m4ALUu
	mLKhtyc1xKEgAL3MhUsNTFpwWg1Du5NOAgcPc/92zF1RAgHNmLmieU8uKu5WsGHpeJib2nMOrJDyz
	NCM+EesyZIhhVxYU9D+nM9QjFQiW6EthxDtnjNTtx9vH9TanQB+je5tfUVowOgaX72Og5ulnoWpn9
	JQ1re2nhsQuBCTFLVGP+T3uL5lbys3+Sdb1HK4F7i4+EC8Oxh5mv7m0DUNi0EiILPZ2HCXU3isLjz
	nwRtXHX4A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNesP-00043F-HE; Thu, 24 Oct 2019 15:18:13 +0000
Received: from mail-il1-x141.google.com ([2607:f8b0:4864:20::141])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNesL-00042I-VK
 for linux-riscv@lists.infradead.org; Thu, 24 Oct 2019 15:18:11 +0000
Received: by mail-il1-x141.google.com with SMTP id z10so22726265ilo.8
 for <linux-riscv@lists.infradead.org>; Thu, 24 Oct 2019 08:18:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=date:from:to:cc:subject:in-reply-to:message-id:references
 :user-agent:mime-version;
 bh=Ounxj9cfL6O+QVspuA41qPrL+dtHlnd6zlmABTsVbws=;
 b=biNiyBsUq1oC7u5yogZy8N29MX7ATTQIXUIPIqqI6g2N8EA9QhwEC0gQemO8Cy5L6a
 UCFg3RDAYG9lnvohF8+tXuDf+IXq7fLq3dVHXnLyE5vPEUz/DrCR7X3R288BYePyqXg3
 oYLT/wTPksWncWN9bXdK0yZ0nbFI3oEoJl84Ht2i67n/365THu308Y+OSHFJ18vXXUqR
 ENefMt09zBo4nBburoq/NmiNK2bRI59OT7KW1kTA/yDrLysLajr6fUNNc1LVC2TMXMzE
 JIj7P2KKqLbrHsjaQFkGpARY6E99HHxeUwRHMbgsRgF/uSl1vSWl2lvW9K349Ga0HXcy
 1zXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:in-reply-to:message-id
 :references:user-agent:mime-version;
 bh=Ounxj9cfL6O+QVspuA41qPrL+dtHlnd6zlmABTsVbws=;
 b=LdF3eFSv/DL+VRXnXffu6/abc9o2YHoy8hhUvo5s+SsgZoVksAPZnur0pb8JZWyunj
 rtL1ey82+sVoJnvEF9C6OsVFhylvfdJxH4RvkPzjoCAY3L+f0qDz1yiK2Ves8wZBX/qf
 zkw1FcjPw6wONsdoCNQu8tOGTCHMUhMeFAMkxcsbNor2eCXic1wVgdJaIjr9K82o7GDp
 XDHPb0uC3st7c71Op4Xq7dzoJW/PWwlqYRp4OXHTZeZZo8q5nv2NIq3qipu0e/7LIP9h
 G6OtZMbzXVKNlRFDTN1dMwMTL3lhbwKLM/nkrbDwbfv/Vv/n/3KeBjDV/hsfXHr6Yej5
 vZoA==
X-Gm-Message-State: APjAAAWZbWgaKvTIqH0e014OoZ5A9QxrMtklOF/aaBGHG6VbMmHxRf0T
 wsFbUpDm7MJWHmUeb1pG91cGyA==
X-Google-Smtp-Source: APXvYqxQ1LtEDnMpoN971luqOI7TbH4CJsi6LuiXRaB4c6bbMVkSBP/cjpjqc6MBqdQnstOla4Sq8g==
X-Received: by 2002:a92:8fc6:: with SMTP id r67mr43423606ilk.5.1571930288560; 
 Thu, 24 Oct 2019 08:18:08 -0700 (PDT)
Received: from localhost ([64.62.168.194])
 by smtp.gmail.com with ESMTPSA id y5sm7755183ilm.63.2019.10.24.08.18.06
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 24 Oct 2019 08:18:07 -0700 (PDT)
Date: Thu, 24 Oct 2019 08:17:59 -0700 (PDT)
From: Paul Walmsley <paul.walmsley@sifive.com>
X-X-Sender: paulw@viisi.sifive.com
To: Michal Simek <michal.simek@xilinx.com>
Subject: Re: [PATCH 1/2] asm-generic: Make msi.h a mandatory include/asm header
In-Reply-To: <a021f232968cfffe3f2d838da47214c6bbdeeedb.1571911976.git.michal.simek@xilinx.com>
Message-ID: <alpine.DEB.2.21.9999.1910240810420.20010@viisi.sifive.com>
References: <cover.1571911976.git.michal.simek@xilinx.com>
 <a021f232968cfffe3f2d838da47214c6bbdeeedb.1571911976.git.michal.simek@xilinx.com>
User-Agent: Alpine 2.21.9999 (DEB 301 2018-08-15)
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="8323329-165076562-1571930279=:20010"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191024_081810_026408_ACE4A2AC 
X-CRM114-Status: GOOD (  12.14  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:141 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 Eric Biggers <ebiggers@google.com>,
 "Peter Zijlstra \(Intel\)" <peterz@infradead.org>,
 Catalin Marinas <catalin.marinas@arm.com>, palmer@sifive.com,
 linux-mips@vger.kernel.org, Masahiro Yamada <yamada.masahiro@socionext.com>,
 Paul Mackerras <paulus@samba.org>, sparclinux@vger.kernel.org,
 linux-riscv@lists.infradead.org, Will Deacon <will@kernel.org>,
 Ingo Molnar <mingo@kernel.org>, linux-arch@vger.kernel.org,
 Herbert Xu <herbert@gondor.apana.org.au>,
 Michael Ellerman <mpe@ellerman.id.au>, Jackie Liu <liuyun01@kylinos.cn>,
 Russell King <linux@armlinux.org.uk>, hch@infradead.org,
 Firoz Khan <firoz.khan@linaro.org>, Wesley Terpstra <wesley@sifive.com>,
 James Hogan <jhogan@kernel.org>, helgaas@kernel.org,
 linux-snps-arc@lists.infradead.org, Albert Ou <aou@eecs.berkeley.edu>,
 Arnd Bergmann <arnd@arndb.de>, git@xilinx.com, longman@redhat.com,
 linux-arm-kernel@lists.infradead.org, monstr@monstr.eu,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>, Vineet Gupta <vgupta@synopsys.com>,
 Cornelia Huck <cohuck@redhat.com>, linux-kernel@vger.kernel.org,
 Ralf Baechle <ralf@linux-mips.org>, Paul Burton <paul.burton@mips.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Paolo Bonzini <pbonzini@redhat.com>, linuxppc-dev@lists.ozlabs.org,
 "David S. Miller" <davem@davemloft.net>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--8323329-165076562-1571930279=:20010
Content-Type: text/plain; charset=ISO-8859-2
Content-Transfer-Encoding: QUOTED-PRINTABLE

On Thu, 24 Oct 2019, Michal Simek wrote:

> msi.h is generic for all architectures expect of x86 which has own versio=
n.
> Enabling MSI by including msi.h to architecture Kbuild is just additional
> step which doesn't need to be done.
> The patch was created based on request to enable MSI for Microblaze.
>=20
> Suggested-by: Christoph Hellwig <hch@infradead.org>
> Signed-off-by: Michal Simek <michal.simek@xilinx.com>
> ---
>=20
> https://lore.kernel.org/linux-riscv/20191008154604.GA7903@infradead.org/

[ ... ]

> diff --git a/arch/riscv/include/asm/Kbuild b/arch/riscv/include/asm/Kbuil=
d
> index 16970f246860..1efaeddf1e4b 100644
> --- a/arch/riscv/include/asm/Kbuild
> +++ b/arch/riscv/include/asm/Kbuild
> @@ -22,7 +22,6 @@ generic-y +=3D kvm_para.h
>  generic-y +=3D local.h
>  generic-y +=3D local64.h
>  generic-y +=3D mm-arch-hooks.h
> -generic-y +=3D msi.h
>  generic-y +=3D percpu.h
>  generic-y +=3D preempt.h
>  generic-y +=3D sections.h

Acked-by: Paul Walmsley <paul.walmsley@sifive.com> # arch/riscv
Tested-by: Paul Walmsley <paul.walmsley@sifive.com> # build only, rv32/rv64

Thanks Micha=B3,


- Paul
--8323329-165076562-1571930279=:20010
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv

--8323329-165076562-1571930279=:20010--

