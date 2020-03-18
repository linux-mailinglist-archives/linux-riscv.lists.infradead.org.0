Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C043818A8A6
	for <lists+linux-riscv@lfdr.de>; Wed, 18 Mar 2020 23:55:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=k6GRUsKzVXLcCjYW1URm4LWEsIVLbuUR75pRpcs7jfc=; b=JdO2FrBRt/gb+F
	gjiefw8aMZ7emB9LCajoSmWFmnwe7R5TvYiEwjTS9AbqPlS9TAhyOUTuw/J+5d9XXJuFAn0f0cYU4
	UtSj19ALTeKRbe7nfAD3knf/3kZBT+OEMJ9cjWjIzEXEA2EtQRTqD6WyjOiBzQdrlOqstTEe66TKJ
	3l+IVRDidIN/OxTKpjntRifcCa/ckK5/o2bjPfFjpMlheQ99L/vD4LRD60WLm4DZTMzY4zKoweT+H
	TBfJ/3p+DggjnxL6rQVFghRL8DB2HGhZ31zuPv5hY45eKIHQtDMrvYvOfGQbo0Np2tw61lSrIsVLa
	vauaX2HmFtym2OJktxQw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jEhat-0005DI-Fs; Wed, 18 Mar 2020 22:55:23 +0000
Received: from userp2120.oracle.com ([156.151.31.85])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jEhaq-0005Co-0S; Wed, 18 Mar 2020 22:55:21 +0000
Received: from pps.filterd (userp2120.oracle.com [127.0.0.1])
 by userp2120.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 02IMrlf6071331;
 Wed, 18 Mar 2020 22:54:54 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=subject : to : cc :
 references : from : message-id : date : mime-version : in-reply-to :
 content-type : content-transfer-encoding; s=corp-2020-01-29;
 bh=k6GRUsKzVXLcCjYW1URm4LWEsIVLbuUR75pRpcs7jfc=;
 b=Ce2szXcqKXTI+HYLH8FYP/wXV6iZiiKOFiXrEFWqdPJZZGa+j5A6up1nM+H+PFvqAruq
 2bmtsY7uC4VN2eaTZy/ynVjVztGCL0aB3JQxl3COHF0Ov0PwR4HlLwExDxRFMh2/cNXG
 i1ybAR233CYhUfDGv/pxrloIrywaQulPtyk7ClLHZs9yCHfZzR5cpSIIIa+WT1rA5dzF
 NFd4ZArbsmv7PEUgi2CZJ24KAFXN2HF//8sIVskEaOldoq6xbpUb/mM3QxImkymGPtMk
 aIwWY1Fs+z9eC6yx+apJdCdvWN5RNRjcCWh+OF3G1lU2Pog392rIPJcyhg+sABAAxpu/ Rg== 
Received: from aserp3020.oracle.com (aserp3020.oracle.com [141.146.126.70])
 by userp2120.oracle.com with ESMTP id 2yub2757m3-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 18 Mar 2020 22:54:54 +0000
Received: from pps.filterd (aserp3020.oracle.com [127.0.0.1])
 by aserp3020.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 02IMq3hY125264;
 Wed, 18 Mar 2020 22:52:53 GMT
Received: from userv0121.oracle.com (userv0121.oracle.com [156.151.31.72])
 by aserp3020.oracle.com with ESMTP id 2ys92j3h77-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 18 Mar 2020 22:52:53 +0000
Received: from abhmp0005.oracle.com (abhmp0005.oracle.com [141.146.116.11])
 by userv0121.oracle.com (8.14.4/8.13.8) with ESMTP id 02IMqo0j011508;
 Wed, 18 Mar 2020 22:52:50 GMT
Received: from [192.168.1.206] (/71.63.128.209)
 by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Wed, 18 Mar 2020 15:52:49 -0700
Subject: Re: [PATCH 1/4] hugetlbfs: add arch_hugetlb_valid_size
To: Dave Hansen <dave.hansen@intel.com>, linux-mm@kvack.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linuxppc-dev@lists.ozlabs.org, linux-riscv@lists.infradead.org,
 linux-s390@vger.kernel.org, sparclinux@vger.kernel.org,
 linux-doc@vger.kernel.org
References: <20200318220634.32100-1-mike.kravetz@oracle.com>
 <20200318220634.32100-2-mike.kravetz@oracle.com>
 <831a0773-1ba6-4d72-44b9-7472123b8528@intel.com>
From: Mike Kravetz <mike.kravetz@oracle.com>
Message-ID: <5aceea6a-8dc0-a44b-80c6-94511b5c75ca@oracle.com>
Date: Wed, 18 Mar 2020 15:52:46 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <831a0773-1ba6-4d72-44b9-7472123b8528@intel.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9564
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 malwarescore=0
 mlxlogscore=999
 mlxscore=0 spamscore=0 bulkscore=0 adultscore=0 suspectscore=0
 phishscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2003020000 definitions=main-2003180098
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9564
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 malwarescore=0
 impostorscore=0
 mlxlogscore=999 mlxscore=0 phishscore=0 adultscore=0 suspectscore=0
 clxscore=1015 priorityscore=1501 lowpriorityscore=0 bulkscore=0
 spamscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2003020000 definitions=main-2003180098
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200318_155520_139595_761CB63B 
X-CRM114-Status: GOOD (  22.34  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [156.151.31.85 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Albert Ou <aou@eecs.berkeley.edu>,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 Andrew Morton <akpm@linux-foundation.org>, Vasily Gorbik <gor@linux.ibm.com>,
 Jonathan Corbet <corbet@lwn.net>, Catalin Marinas <catalin.marinas@arm.com>,
 Dave Hansen <dave.hansen@linux.intel.com>,
 Heiko Carstens <heiko.carstens@de.ibm.com>,
 Christian Borntraeger <borntraeger@de.ibm.com>, Ingo Molnar <mingo@redhat.com>,
 Palmer Dabbelt <palmer@dabbelt.com>, Paul Walmsley <paul.walmsley@sifive.com>,
 Paul Mackerras <paulus@samba.org>, Thomas Gleixner <tglx@linutronix.de>,
 Longpeng <longpeng2@huawei.com>, Will Deacon <will@kernel.org>,
 "David S.Miller" <davem@davemloft.net>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On 3/18/20 3:15 PM, Dave Hansen wrote:
> Hi Mike,
> 
> The series looks like a great idea to me.  One nit on the x86 bits,
> though...
> 
>> diff --git a/arch/x86/mm/hugetlbpage.c b/arch/x86/mm/hugetlbpage.c
>> index 5bfd5aef5378..51e6208fdeec 100644
>> --- a/arch/x86/mm/hugetlbpage.c
>> +++ b/arch/x86/mm/hugetlbpage.c
>> @@ -181,16 +181,25 @@ hugetlb_get_unmapped_area(struct file *file, unsigned long addr,
>>  #endif /* CONFIG_HUGETLB_PAGE */
>>  
>>  #ifdef CONFIG_X86_64
>> +bool __init arch_hugetlb_valid_size(unsigned long long size)
>> +{
>> +	if (size == PMD_SIZE)
>> +		return true;
>> +	else if (size == PUD_SIZE && boot_cpu_has(X86_FEATURE_GBPAGES))
>> +		return true;
>> +	else
>> +		return false;
>> +}
> 
> I'm pretty sure it's possible to have a system without 2M/PMD page
> support.  We even have a handy-dandy comment about it in
> arch/x86/include/asm/required-features.h:
> 
> 	#ifdef CONFIG_X86_64
> 	#ifdef CONFIG_PARAVIRT
> 	/* Paravirtualized systems may not have PSE or PGE available */
> 	#define NEED_PSE        0
> 	...
> 
> I *think* you need an X86_FEATURE_PSE check here to be totally correct.
> 
> 	if (size == PMD_SIZE && cpu_feature_enabled(X86_FEATURE_PSE))
> 		return true;
> 
> BTW, I prefer cpu_feature_enabled() to boot_cpu_has() because it
> includes disabled-features checking.  I don't think any of it matters
> for these specific features, but I generally prefer it on principle.

Sounds good.  I'll incorporate those changes into a v2, unless someone
else with has a different opinion.

BTW, this patch should not really change the way the code works today.
It is mostly a movement of code.  Unless I am missing something, the
existing code will always allow setup of PMD_SIZE hugetlb pages.
-- 
Mike Kravetz

