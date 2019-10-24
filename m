Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C3644E392B
	for <lists+linux-riscv@lfdr.de>; Thu, 24 Oct 2019 19:03:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kT+Gz+rLHzw98q65OTgjMQaeXT+OvRu6Met92W04VVY=; b=giPOd4mSY4+R4d
	h6/Ihwv6GbuBhcmaPu/nsrXyZXd90Ps1xjMuiSW4fh8+0DCcf3lI2Gjsslbia3c1n/gcdlGCz3N1x
	d03fxaUG3Dve7ro6deqK1MtRhAD39zqoJTsLtNrimlk3jT0KRjMRIwEf0/NDB7Cf2bnFSH7zBtPb6
	jMkkKyXbBspOE4WrObA3E4q+6Tqdf813jowlsOdxsbN+QfRo44aglPYdLuP847pKLvtgcuLatJsPs
	f5Zt/AWDoYLaLLvSauN53OXmu7ohcqkH79UWc0sugAwtYK2frU3ga+vku1jsrInpbtgRVtFwVl4yp
	87V3VTMbmmfeN0MaSgXw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNgWZ-00031g-A8; Thu, 24 Oct 2019 17:03:47 +0000
Received: from us-smtp-delivery-1.mimecast.com ([207.211.31.120]
 helo=us-smtp-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNgWT-0002zl-Pk
 for linux-riscv@lists.infradead.org; Thu, 24 Oct 2019 17:03:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1571936620;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=KPuVZSjsJby28GYRrSW7KOOUQEyPDIp7ehYqx2CiMW8=;
 b=MCqDGEx5d1nmpaGulY9oWAEWrOOdd6AH1FeAb8dSjLPEPOtIJ5T4gFJv4uf+ge5ex/xAd7
 5KbJgA4REyWouZKqZK/+KnUb8TcBJIDiyd8V5SyW3JvUWbt47uTMSwE8q+6aFZdZOMXRSg
 keJL4NMVRDp6DA47ZQWtkAZEs3Pdsp4=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-305-4DGjzRdVOO-j_UhaexIoDw-1; Thu, 24 Oct 2019 13:03:34 -0400
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com
 [10.5.11.11])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 1CED11800DFB;
 Thu, 24 Oct 2019 17:03:22 +0000 (UTC)
Received: from llong.remote.csb (dhcp-17-59.bos.redhat.com [10.18.17.59])
 by smtp.corp.redhat.com (Postfix) with ESMTP id EA8096012E;
 Thu, 24 Oct 2019 17:03:16 +0000 (UTC)
Subject: Re: [PATCH 0/2] Enabling MSI for Microblaze
To: Michal Simek <michal.simek@xilinx.com>, linux-kernel@vger.kernel.org,
 monstr@monstr.eu, git@xilinx.com, palmer@sifive.com, hch@infradead.org,
 helgaas@kernel.org
References: <cover.1571911976.git.michal.simek@xilinx.com>
From: Waiman Long <longman@redhat.com>
Organization: Red Hat
Message-ID: <e9feafd1-8497-025b-e81d-f0e974038f3c@redhat.com>
Date: Thu, 24 Oct 2019 13:03:16 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <cover.1571911976.git.michal.simek@xilinx.com>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
X-MC-Unique: 4DGjzRdVOO-j_UhaexIoDw-1
X-Mimecast-Spam-Score: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191024_100341_918932_BBA7CCFF 
X-CRM114-Status: GOOD (  14.29  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [207.211.31.120 listed in list.dnswl.org]
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
Cc: Catalin Marinas <catalin.marinas@arm.com>,
 Eric Biggers <ebiggers@google.com>,
 "Peter Zijlstra \(Intel\)" <peterz@infradead.org>,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>, linux-pci@vger.kernel.org,
 Masahiro Yamada <yamada.masahiro@socionext.com>,
 Paul Mackerras <paulus@samba.org>, sparclinux@vger.kernel.org,
 linux-riscv@lists.infradead.org, Will Deacon <will@kernel.org>,
 Ingo Molnar <mingo@kernel.org>, linux-arch@vger.kernel.org,
 Herbert Xu <herbert@gondor.apana.org.au>,
 Michael Ellerman <mpe@ellerman.id.au>, Jackie Liu <liuyun01@kylinos.cn>,
 Russell King <linux@armlinux.org.uk>, Firoz Khan <firoz.khan@linaro.org>,
 Wesley Terpstra <wesley@sifive.com>, James Hogan <jhogan@kernel.org>,
 linux-snps-arc@lists.infradead.org, Albert Ou <aou@eecs.berkeley.edu>,
 Arnd Bergmann <arnd@arndb.de>, Paul Walmsley <paul.walmsley@sifive.com>,
 Bjorn Helgaas <bhelgaas@google.com>, linux-arm-kernel@lists.infradead.org,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Cornelia Huck <cohuck@redhat.com>, linux-mips@vger.kernel.org,
 Ralf Baechle <ralf@linux-mips.org>, Paul Burton <paul.burton@mips.com>,
 Vineet Gupta <vgupta@synopsys.com>, Paolo Bonzini <pbonzini@redhat.com>,
 linuxppc-dev@lists.ozlabs.org, "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On 10/24/19 6:13 AM, Michal Simek wrote:
> Hi,
>
> these two patches come from discussion with Christoph, Bjorn, Palmer and
> Waiman. The first patch was suggestion by Christoph here
> https://lore.kernel.org/linux-riscv/20191008154604.GA7903@infradead.org/
> The second part was discussed
> https://lore.kernel.org/linux-pci/mhng-5d9bcb53-225e-441f-86cc-b335624b3e7c@palmer-si-x1e/
> and
> https://lore.kernel.org/linux-pci/20191017181937.7004-1-palmer@sifive.com/
>
> Thanks,
> Michal
>
>
> Michal Simek (1):
>   asm-generic: Make msi.h a mandatory include/asm header
>
> Palmer Dabbelt (1):
>   pci: Default to PCI_MSI_IRQ_DOMAIN
>
>  arch/arc/include/asm/Kbuild     | 1 -
>  arch/arm/include/asm/Kbuild     | 1 -
>  arch/arm64/include/asm/Kbuild   | 1 -
>  arch/mips/include/asm/Kbuild    | 1 -
>  arch/powerpc/include/asm/Kbuild | 1 -
>  arch/riscv/include/asm/Kbuild   | 1 -
>  arch/sparc/include/asm/Kbuild   | 1 -
>  drivers/pci/Kconfig             | 2 +-
>  include/asm-generic/Kbuild      | 1 +
>  9 files changed, 2 insertions(+), 8 deletions(-)
>
That looks OK.

Acked-by: Waiman Long <longman@redhat.com>


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
