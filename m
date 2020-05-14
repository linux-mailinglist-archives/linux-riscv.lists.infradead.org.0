Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 35EF81D2A05
	for <lists+linux-riscv@lfdr.de>; Thu, 14 May 2020 10:27:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=m+Gvti7GqM/pzc8P7nlWwTg5i9XHYMsdn+XWNql7cXI=; b=k5o68FbWMx+YFa
	rEyuN9RNiSYx4J5fOGmtyVLY/52wzCJihg+Ds+WNjPb5lJRDUy7cw+j1ScvXhyBvSmETm40Ardhgl
	3rc+YC9XVI6zAL+Wxi6PMJcBYtIz9lBehysShLqrJiBObhkJEowl9dX1bDFDhL6f7vkpzx0ZXs286
	agOnjpEV6xXluas+BUFab59+IqqOxcQO7oQXuBAYowMnKYMgeO6lCpkFsr7DebX1BrndD3j6MVnWH
	sgVFF/Zc6hPgK7UL7AdiJtIsfIza2XDxfnO26qzPx2vaMa8hXiz85lAzJ+93Xm7lLZhkHK/vpSD0K
	bPdeS2uxmASFTr/vLZcg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZ9Cx-0001J3-9K; Thu, 14 May 2020 08:27:11 +0000
Received: from szxga07-in.huawei.com ([45.249.212.35] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZ9Ct-0001IK-Ou
 for linux-riscv@lists.infradead.org; Thu, 14 May 2020 08:27:09 +0000
Received: from DGGEMS412-HUB.china.huawei.com (unknown [172.30.72.59])
 by Forcepoint Email with ESMTP id E33D99F0F89B7D0A6AE6;
 Thu, 14 May 2020 16:26:54 +0800 (CST)
Received: from [127.0.0.1] (10.166.215.93) by DGGEMS412-HUB.china.huawei.com
 (10.3.19.212) with Microsoft SMTP Server id 14.3.487.0; Thu, 14 May 2020
 16:26:46 +0800
Subject: Re: [PATCH 05/10] riscv: Disable ARCH_HAS_DEBUG_WX if NOMMU
To: Palmer Dabbelt <palmer@dabbelt.com>
References: <mhng-f65a8b91-0836-4927-a39f-8167cd3ec67f@palmerdabbelt-glaptop1>
From: Kefeng Wang <wangkefeng.wang@huawei.com>
Message-ID: <5d08390b-613a-516c-0091-0dc78fbc0ef8@huawei.com>
Date: Thu, 14 May 2020 16:26:45 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <mhng-f65a8b91-0836-4927-a39f-8167cd3ec67f@palmerdabbelt-glaptop1>
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Transfer-Encoding: 8bit
Content-Language: en-US
X-Originating-IP: [10.166.215.93]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200514_012707_973616_028C4A17 
X-CRM114-Status: GOOD (  11.82  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.35 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: hulkci@huawei.com, linux-riscv@lists.infradead.org, aou@eecs.berkeley.edu,
 linux-kernel@vger.kernel.org, Paul Walmsley <paul.walmsley@sifive.com>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org


On 2020/5/14 5:14, Palmer Dabbelt wrote:
> On Sun, 10 May 2020 19:19:56 PDT (-0700), wangkefeng.wang@huawei.com 
> wrote:
>> DEBUG_WX is only useful when MMU enabled, diable it if nommu
>> and fix the build error.
>>
>> Reported-by: Hulk Robot <hulkci@huawei.com>
>> Signed-off-by: Kefeng Wang <wangkefeng.wang@huawei.com>
>> ---
>>  arch/riscv/Kconfig | 2 +-
>>  1 file changed, 1 insertion(+), 1 deletion(-)
>>
>> diff --git a/arch/riscv/Kconfig b/arch/riscv/Kconfig
>> index 78f30f2fdd51..7da0a36a8df0 100644
>> --- a/arch/riscv/Kconfig
>> +++ b/arch/riscv/Kconfig
>> @@ -69,7 +69,7 @@ config RISCV
>>      select HAVE_ARCH_KASAN if MMU && 64BIT
>>      select HAVE_ARCH_KGDB
>>      select HAVE_ARCH_KGDB_QXFER_PKT
>> -    select ARCH_HAS_DEBUG_WX
>> +    select ARCH_HAS_DEBUG_WX if MMU
>>
>>  config ARCH_MMAP_RND_BITS_MIN
>>      default 18 if 64BIT
>
> Looks like this depends on something that isn't in any of my trees yet.
as said in cover letter, the patch is based on linux-next, tag 
next-20200508 :)
>
>


