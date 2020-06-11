Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A9B841F6E14
	for <lists+linux-riscv@lfdr.de>; Thu, 11 Jun 2020 21:44:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
	Message-ID:References:To:Subject:From:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZzqTSgTmI8uFrrzSPL+KgNV4RytmRiBrBrO6LaQIAm0=; b=MTuP4pAMj793Dv
	+NLl31SvMxTxqCbX0+p09LD2xclL22WHxM/WQUVOvSecrCwY+gD+5h/63xwVh1rpObuVS4S0uz/Ev
	X3r+E6Td+GfpZgHIZhQC/FlWKjIoN/BhW0D7MfsKi06Q9aqwsEuYpO+VX+uGcosmRkE1wTrO/OkSH
	wb6vha8iE0C3eK8raFH3XQmHwZaMkPgA4NksktQCd/CdNGeJ82/s+LtUMzLKbpkSOm0EB3ujIUjul
	McYBc2a2CbfbCgrWeCfFZDv3L2YebjbuzxieTyoeqrdiXk8Y12hRax7BoIXBNMGLoJjMUMmlNPO96
	Pj+1XvKl05ww1b3DAxCw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jjT7Q-00042P-D5; Thu, 11 Jun 2020 19:44:08 +0000
Received: from relay10.mail.gandi.net ([217.70.178.230])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jjT7N-00041z-7y
 for linux-riscv@lists.infradead.org; Thu, 11 Jun 2020 19:44:06 +0000
Received: from [192.168.1.11] (lfbn-gre-1-325-105.w90-112.abo.wanadoo.fr
 [90.112.45.105]) (Authenticated sender: alex@ghiti.fr)
 by relay10.mail.gandi.net (Postfix) with ESMTPSA id B3F6E240004;
 Thu, 11 Jun 2020 19:43:56 +0000 (UTC)
From: Alex Ghiti <alex@ghiti.fr>
Subject: Re: [PATCH v5 2/4] riscv: Introduce CONFIG_RELOCATABLE
To: Jerome Forissier <jerome@forissier.org>,
 Michael Ellerman <mpe@ellerman.id.au>,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 Paul Mackerras <paulus@samba.org>, Paul Walmsley <paul.walmsley@sifive.com>,
 Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>,
 Anup Patel <Anup.Patel@wdc.com>, Atish Patra <Atish.Patra@wdc.com>,
 Zong Li <zong.li@sifive.com>, linux-kernel@vger.kernel.org,
 linuxppc-dev@lists.ozlabs.org, linux-riscv@lists.infradead.org
References: <20200607075949.665-1-alex@ghiti.fr>
 <20200607075949.665-3-alex@ghiti.fr>
 <b588dd9e-dff8-3458-0c7d-149e3990bca7@forissier.org>
Message-ID: <43ef1623-2186-aa07-cfa5-d618aa4f09c0@ghiti.fr>
Date: Thu, 11 Jun 2020 15:43:56 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.9.0
MIME-Version: 1.0
In-Reply-To: <b588dd9e-dff8-3458-0c7d-149e3990bca7@forissier.org>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
Content-Language: fr
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200611_124405_417865_B4639B12 
X-CRM114-Status: GOOD (  12.62  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.178.230 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [217.70.178.230 listed in wl.mailspike.net]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Anup Patel <anup@brainfault.org>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Hi Jerome,

Le 6/10/20 à 10:10 AM, Jerome Forissier a écrit :
> On 6/7/20 9:59 AM, Alexandre Ghiti wrote:
> [...]
>
>> +config RELOCATABLE
>> +	bool
>> +	depends on MMU
>> +	help
>> +          This builds a kernel as a Position Independent Executable (PIE),
>> +          which retains all relocation metadata required to relocate the
>> +          kernel binary at runtime to a different virtual address than the
>> +          address it was linked at.
>> +          Since RISCV uses the RELA relocation format, this requires a
>> +          relocation pass at runtime even if the kernel is loaded at the
>> +          same address it was linked at.
> Is this true? I thought that the GNU linker would write the "proper"
> values by default, contrary to the LLVM linker (ld.lld) which would need
> a special flag: --apply-dynamic-relocs (by default the relocated places
> are set to zero). At least, it is my experience with Aarch64 on a
> different project. So, sorry if I'm talking nonsense here -- I have not
> looked at the details.
>
>

It seems that you're right, at least for aarch64 since they specifically 
specify the --no-apply-dynamic-relocs option. I retried to boot without 
relocating at runtime, and it fails on riscv. Can this be arch specific ?

Thanks,

Alex


