Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BD56C18A862
	for <lists+linux-riscv@lfdr.de>; Wed, 18 Mar 2020 23:39:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=H1MqLvxMQu57KLqvhSHFxWcNzIe9uVH2pzVyel8x3lY=; b=IYxWLclvR5X9ne
	fPOsKMKX+mq4ndV6LdG4Xbx041ogmv+Lf9G8YomgpqDKNAQ7dJwvA53mdxhECcO6BJSao5evaS/e3
	klw7RBfOfgqi97c6YKvIlFACpmn3Rm9q2E9CJBW3eiU+1Ngx1avBthJWtD1N6vbX4QnDXpMkIcwmM
	W/ozkI3Xszg5T3ze+BjR/9Q5mOYIO12l4P5tVAEllXANLQYUq7y8sqG6LbuSUFHxxsC28d83MzBG3
	FjG4yTCl8ZM1mhLxDLultVAUuEQo0OSdJUyV7mZzPOm6kfaIc4zcmPFlzjadOez7Fj5I8I5ojj/Iy
	DtreGHT43+cPBBW6sFuQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jEhLb-0005Cd-Tf; Wed, 18 Mar 2020 22:39:35 +0000
Received: from aserp2120.oracle.com ([141.146.126.78])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jEhLY-0005C1-Fm; Wed, 18 Mar 2020 22:39:33 +0000
Received: from pps.filterd (aserp2120.oracle.com [127.0.0.1])
 by aserp2120.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 02IMd6da003668;
 Wed, 18 Mar 2020 22:39:06 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=subject : to : cc :
 references : from : message-id : date : mime-version : in-reply-to :
 content-type : content-transfer-encoding; s=corp-2020-01-29;
 bh=H1MqLvxMQu57KLqvhSHFxWcNzIe9uVH2pzVyel8x3lY=;
 b=YRFM8a6G/Nlx2vr+v00SsVqX8z+MTuEh6bQcPh317YpuKbvbvW/V1YrZ4GafwKwUWFAM
 CLTRLGdG/wGJv4fvSn/OIsLtkEOrE1kTK7QLdLjaOPhFHxLExj4mvQNWrxwRUaTodqK9
 Yu66Qcg0aAbs0n1iKUfXdYUkL/lWY9RSzX635I6NqpyjvMqP23tsyz9CXmmiHVHW+XDv
 Dpvkszh0PGrln064nj1pqUqZWPmLM94FcgPKTGY0wczu7fBtU89e7l2RIiDXGcwbcY36
 vT+6bjLnrYqH9P3W09Sh/G4ZPGweC2OG1tYuva0v3txraGIhO3Ko2ocoPmPlwXsDpdc/ Ag== 
Received: from aserp3030.oracle.com (aserp3030.oracle.com [141.146.126.71])
 by aserp2120.oracle.com with ESMTP id 2yrq7m57nx-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 18 Mar 2020 22:39:05 +0000
Received: from pps.filterd (aserp3030.oracle.com [127.0.0.1])
 by aserp3030.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 02IMaggY070076;
 Wed, 18 Mar 2020 22:39:05 GMT
Received: from userv0122.oracle.com (userv0122.oracle.com [156.151.31.75])
 by aserp3030.oracle.com with ESMTP id 2ys8tuvjum-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 18 Mar 2020 22:39:05 +0000
Received: from abhmp0004.oracle.com (abhmp0004.oracle.com [141.146.116.10])
 by userv0122.oracle.com (8.14.4/8.14.4) with ESMTP id 02IMctjE013967;
 Wed, 18 Mar 2020 22:38:56 GMT
Received: from [192.168.1.206] (/71.63.128.209)
 by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Wed, 18 Mar 2020 15:38:55 -0700
Subject: Re: [PATCH 1/4] hugetlbfs: add arch_hugetlb_valid_size
To: Will Deacon <will@kernel.org>
References: <20200318220634.32100-1-mike.kravetz@oracle.com>
 <20200318220634.32100-2-mike.kravetz@oracle.com>
 <20200318220954.GD8477@willie-the-truck>
From: Mike Kravetz <mike.kravetz@oracle.com>
Message-ID: <43735ae0-f5f6-1e7b-2d0f-a46f9af1627e@oracle.com>
Date: Wed, 18 Mar 2020 15:38:53 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <20200318220954.GD8477@willie-the-truck>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9564
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 adultscore=0
 phishscore=0 mlxscore=0
 malwarescore=0 suspectscore=0 mlxlogscore=999 spamscore=0 bulkscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2003020000
 definitions=main-2003180097
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9564
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 lowpriorityscore=0 suspectscore=0
 adultscore=0 bulkscore=0 mlxlogscore=999 priorityscore=1501 clxscore=1015
 malwarescore=0 mlxscore=0 phishscore=0 impostorscore=0 spamscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2003020000
 definitions=main-2003180097
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200318_153932_610979_6A5BCCCD 
X-CRM114-Status: GOOD (  20.33  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [141.146.126.78 listed in list.dnswl.org]
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
Cc: linux-doc@vger.kernel.org, Catalin Marinas <catalin.marinas@arm.com>,
 Dave Hansen <dave.hansen@linux.intel.com>,
 Heiko Carstens <heiko.carstens@de.ibm.com>, linux-mm@kvack.org,
 Paul Mackerras <paulus@samba.org>, sparclinux@vger.kernel.org,
 linux-riscv@lists.infradead.org, linux-s390@vger.kernel.org,
 Jonathan Corbet <corbet@lwn.net>,
 Christian Borntraeger <borntraeger@de.ibm.com>, Ingo Molnar <mingo@redhat.com>,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 Longpeng <longpeng2@huawei.com>, Albert Ou <aou@eecs.berkeley.edu>,
 Vasily Gorbik <gor@linux.ibm.com>, Paul Walmsley <paul.walmsley@sifive.com>,
 Thomas Gleixner <tglx@linutronix.de>, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, Palmer Dabbelt <palmer@dabbelt.com>,
 Andrew Morton <akpm@linux-foundation.org>, linuxppc-dev@lists.ozlabs.org,
 "David S.Miller" <davem@davemloft.net>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On 3/18/20 3:09 PM, Will Deacon wrote:
> On Wed, Mar 18, 2020 at 03:06:31PM -0700, Mike Kravetz wrote:
>> The architecture independent routine hugetlb_default_setup sets up
>> the default huge pages size.  It has no way to verify if the passed
>> value is valid, so it accepts it and attempts to validate at a later
>> time.  This requires undocumented cooperation between the arch specific
>> and arch independent code.
>>
>> For architectures that support more than one huge page size, provide
>> a routine arch_hugetlb_valid_size to validate a huge page size.
>> hugetlb_default_setup can use this to validate passed values.
>>
>> arch_hugetlb_valid_size will also be used in a subsequent patch to
>> move processing of the "hugepagesz=" in arch specific code to a common
>> routine in arch independent code.
>>
>> Signed-off-by: Mike Kravetz <mike.kravetz@oracle.com>
>> ---
>>  arch/arm64/include/asm/hugetlb.h   |  2 ++
>>  arch/arm64/mm/hugetlbpage.c        | 19 ++++++++++++++-----
>>  arch/powerpc/include/asm/hugetlb.h |  3 +++
>>  arch/powerpc/mm/hugetlbpage.c      | 20 +++++++++++++-------
>>  arch/riscv/include/asm/hugetlb.h   |  3 +++
>>  arch/riscv/mm/hugetlbpage.c        | 28 ++++++++++++++++++----------
>>  arch/s390/include/asm/hugetlb.h    |  3 +++
>>  arch/s390/mm/hugetlbpage.c         | 18 +++++++++++++-----
>>  arch/sparc/include/asm/hugetlb.h   |  3 +++
>>  arch/sparc/mm/init_64.c            | 23 ++++++++++++++++-------
>>  arch/x86/include/asm/hugetlb.h     |  3 +++
>>  arch/x86/mm/hugetlbpage.c          | 21 +++++++++++++++------
>>  include/linux/hugetlb.h            |  7 +++++++
>>  mm/hugetlb.c                       | 16 +++++++++++++---
>>  14 files changed, 126 insertions(+), 43 deletions(-)
>>
>> diff --git a/arch/arm64/include/asm/hugetlb.h b/arch/arm64/include/asm/hugetlb.h
>> index 2eb6c234d594..3248f35213ee 100644
>> --- a/arch/arm64/include/asm/hugetlb.h
>> +++ b/arch/arm64/include/asm/hugetlb.h
<snip>
>> +
>> +static __init int setup_hugepagesz(char *opt)
>> +{
>> +	unsigned long long ps = memparse(opt, &opt);
>> +
>> +	if arch_hugetlb_valid_size(ps)) {
> 
> Please compile your changes if you're touching multiple architectures. You
> can get cross-compiler binaries from:
> 

My apologies.  I only cross compiled the result of the series on each
architecture.  The above code is obviously bad.

-- 
Mike Kravetz

