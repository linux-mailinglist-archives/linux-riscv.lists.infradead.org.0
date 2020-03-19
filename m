Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B833218BD97
	for <lists+linux-riscv@lfdr.de>; Thu, 19 Mar 2020 18:08:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NPUm1EQJVtgWLM+t8BAch1GSQ3QvGTbOEaPKJ5CUYgc=; b=aoezpQNHbiPMLo
	KcFcd4Jz7+tduzw3e3uNUJv22V3qtEztfQg4LO6FWeAHG0CAB1Y8L/kRlS5j6MVKVjr2MjRkKTvqq
	qDgwPxzz7HsFOCIS09fz7lAFssQ3Kf0ylQ7NDrWZyAKKTkm6WMgDmaEJiBTomlEYD8EMnuTzt8Uri
	d7oPblTzph0PqIUtxC4+AaK8yPSNEXc0nZ0fC53LP4em0GlrmzID2jRI+lzB/7quztV1i+z6HhqQ2
	MHngxKnVX6kSB6BnXhe+QvMOts/y/2mXx9/TFltFWEp/wHezy99SE9fdevriOUWzHbVK5cYR6boED
	1LootD14YVdA5p/Gnd/Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jEyeU-0002VG-Pw; Thu, 19 Mar 2020 17:08:14 +0000
Received: from userp2130.oracle.com ([156.151.31.86])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jEyeR-0002Uo-3R; Thu, 19 Mar 2020 17:08:12 +0000
Received: from pps.filterd (userp2130.oracle.com [127.0.0.1])
 by userp2130.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 02JGmttO114276;
 Thu, 19 Mar 2020 17:00:46 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=subject : to : cc :
 references : from : message-id : date : mime-version : in-reply-to :
 content-type : content-transfer-encoding; s=corp-2020-01-29;
 bh=NPUm1EQJVtgWLM+t8BAch1GSQ3QvGTbOEaPKJ5CUYgc=;
 b=kekiTGkNqqwLecdSsDCvWSDHKiPSanlqw799v3S5DFviUWnOQ3ztxRngAFS7QVKVuacE
 H9fypgtnLfqIpxFhavkZBD1a0KagmuckYo9UcETMNO1iP4WtlY9820y30sxTyZBU/QAl
 w9Wn//zIzJHveGw/tKV6XN1dfwnJLt2KSUiQCTHSuoCDrQz6ImC0G3g1DYmT4pRJzde+
 lcbcd88a8M0kwISscWrYGjsJfKQEoBaxGtyAWoSsXZqwEYYjfirWeePzu2C0uf3zIBOA
 9A9/jYT1gvE+okRihBVBTU1phAcMxT9JD8fHCQnGjn0ZMFVm1KXd5kFQ6mqgsPmZ5dOY Tg== 
Received: from aserp3030.oracle.com (aserp3030.oracle.com [141.146.126.71])
 by userp2130.oracle.com with ESMTP id 2yrpprhk34-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Thu, 19 Mar 2020 17:00:45 +0000
Received: from pps.filterd (aserp3030.oracle.com [127.0.0.1])
 by aserp3030.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 02JGoqSX138311;
 Thu, 19 Mar 2020 17:00:45 GMT
Received: from userv0121.oracle.com (userv0121.oracle.com [156.151.31.72])
 by aserp3030.oracle.com with ESMTP id 2ys8twc791-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Thu, 19 Mar 2020 17:00:45 +0000
Received: from abhmp0001.oracle.com (abhmp0001.oracle.com [141.146.116.7])
 by userv0121.oracle.com (8.14.4/8.13.8) with ESMTP id 02JH0aeb016891;
 Thu, 19 Mar 2020 17:00:36 GMT
Received: from [192.168.1.206] (/71.63.128.209)
 by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Thu, 19 Mar 2020 10:00:36 -0700
Subject: Re: [PATCH 2/4] hugetlbfs: move hugepagesz= parsing to arch
 independent code
To: Christophe Leroy <christophe.leroy@c-s.fr>, linux-mm@kvack.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linuxppc-dev@lists.ozlabs.org, linux-riscv@lists.infradead.org,
 linux-s390@vger.kernel.org, sparclinux@vger.kernel.org,
 linux-doc@vger.kernel.org
References: <20200318220634.32100-1-mike.kravetz@oracle.com>
 <20200318220634.32100-3-mike.kravetz@oracle.com>
 <2ca058dc-47e6-1d08-154b-77d2cbe98e34@c-s.fr>
From: Mike Kravetz <mike.kravetz@oracle.com>
Message-ID: <bb1c86b0-5d06-8999-5e3a-f9d20ca46fa1@oracle.com>
Date: Thu, 19 Mar 2020 10:00:33 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <2ca058dc-47e6-1d08-154b-77d2cbe98e34@c-s.fr>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9565
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 adultscore=0
 phishscore=0 mlxscore=0
 malwarescore=0 suspectscore=0 mlxlogscore=999 spamscore=0 bulkscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2003020000
 definitions=main-2003190073
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9565
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 malwarescore=0
 bulkscore=0
 suspectscore=0 lowpriorityscore=0 phishscore=0 adultscore=0 clxscore=1011
 impostorscore=0 priorityscore=1501 spamscore=0 mlxlogscore=999 mlxscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2003020000
 definitions=main-2003190073
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200319_100811_185853_6F0364ED 
X-CRM114-Status: GOOD (  21.18  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [156.151.31.86 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Albert Ou <aou@eecs.berkeley.edu>, Vasily Gorbik <gor@linux.ibm.com>,
 Jonathan Corbet <corbet@lwn.net>, Catalin Marinas <catalin.marinas@arm.com>,
 Dave Hansen <dave.hansen@linux.intel.com>,
 Heiko Carstens <heiko.carstens@de.ibm.com>,
 "David S.Miller" <davem@davemloft.net>,
 Christian Borntraeger <borntraeger@de.ibm.com>, Ingo Molnar <mingo@redhat.com>,
 Palmer Dabbelt <palmer@dabbelt.com>, Paul Walmsley <paul.walmsley@sifive.com>,
 Paul Mackerras <paulus@samba.org>, Andrew Morton <akpm@linux-foundation.org>,
 Longpeng <longpeng2@huawei.com>, Will Deacon <will@kernel.org>,
 Thomas Gleixner <tglx@linutronix.de>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On 3/19/20 12:04 AM, Christophe Leroy wrote:
> 
> 
> Le 18/03/2020 à 23:06, Mike Kravetz a écrit :
>> Now that architectures provide arch_hugetlb_valid_size(), parsing
>> of "hugepagesz=" can be done in architecture independent code.
>> Create a single routine to handle hugepagesz= parsing and remove
>> all arch specific routines.  We can also remove the interface
>> hugetlb_bad_size() as this is no longer used outside arch independent
>> code.
>>
>> This also provides consistent behavior of hugetlbfs command line
>> options.  The hugepagesz= option should only be specified once for
>> a specific size, but some architectures allow multiple instances.
>> This appears to be more of an oversight when code was added by some
>> architectures to set up ALL huge pages sizes.
>>
>> Signed-off-by: Mike Kravetz <mike.kravetz@oracle.com>
>> ---
>>   arch/arm64/mm/hugetlbpage.c   | 15 ---------------
>>   arch/powerpc/mm/hugetlbpage.c | 15 ---------------
>>   arch/riscv/mm/hugetlbpage.c   | 16 ----------------
>>   arch/s390/mm/hugetlbpage.c    | 18 ------------------
>>   arch/sparc/mm/init_64.c       | 22 ----------------------
>>   arch/x86/mm/hugetlbpage.c     | 16 ----------------
>>   include/linux/hugetlb.h       |  1 -
>>   mm/hugetlb.c                  | 24 ++++++++++++++++++------
>>   8 files changed, 18 insertions(+), 109 deletions(-)
>>
> 
> [snip]
> 
>> diff --git a/mm/hugetlb.c b/mm/hugetlb.c
>> index 2f99359b93af..cd4ec07080fb 100644
>> --- a/mm/hugetlb.c
>> +++ b/mm/hugetlb.c
>> @@ -3149,12 +3149,6 @@ static int __init hugetlb_init(void)
>>   }
>>   subsys_initcall(hugetlb_init);
>>   -/* Should be called on processing a hugepagesz=... option */
>> -void __init hugetlb_bad_size(void)
>> -{
>> -    parsed_valid_hugepagesz = false;
>> -}
>> -
>>   void __init hugetlb_add_hstate(unsigned int order)
>>   {
>>       struct hstate *h;
>> @@ -3224,6 +3218,24 @@ static int __init hugetlb_nrpages_setup(char *s)
>>   }
>>   __setup("hugepages=", hugetlb_nrpages_setup);
>>   +static int __init hugepagesz_setup(char *s)
>> +{
>> +    unsigned long long size;
>> +    char *saved_s = s;
>> +
>> +    size = memparse(s, &s);
> 
> You don't use s after that, so you can pass NULL instead of &s and avoid the saved_s

Thanks!

I'll incorporate in v2.

-- 
Mike Kravetz

