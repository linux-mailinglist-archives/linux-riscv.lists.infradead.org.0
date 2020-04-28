Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A9501BB50C
	for <lists+linux-riscv@lfdr.de>; Tue, 28 Apr 2020 06:18:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aY27Bt+v6f9CMxvJjowuNTwSN6WXzdYtnZyAwfK1y3c=; b=Iyv48w0MIyqudF
	yG0RcBbDaTtGfqgnU55lrdW1e6xcU/qcr4XffoPHe8yIaMDX70aEQEtuzeAVbLJvEzIV7T9q+h4Au
	WcAjKOQnVkkv1e4lcPhJz44M8S6LCUE+nzN3i7lWEhStc34JwIXrhuXFCaK+KV18HoLSzk39rmhGm
	jERS47NPaO5NGEdNK0vvx+eIxwxK7aYtk73bhbjbQYRyhdbPcGcd/XnqbUuNJQKCRxwi6jr5kdU41
	InDXeOZCeXKZ1foe9i8Rp7+gil9H/gyOSlAY4WLpOqBWfD4405tyl/YDsB3JCVzIOUHD1Zvs+KflY
	8WFXnTha1ICOQUdWhubw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTHhL-0000NP-Fp; Tue, 28 Apr 2020 04:18:19 +0000
Received: from mx0b-001b2d01.pphosted.com ([148.163.158.5]
 helo=mx0a-001b2d01.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTHh4-0000CH-IH; Tue, 28 Apr 2020 04:18:04 +0000
Received: from pps.filterd (m0098420.ppops.net [127.0.0.1])
 by mx0b-001b2d01.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 03S44aiX124128; Tue, 28 Apr 2020 00:17:28 -0400
Received: from pps.reinject (localhost [127.0.0.1])
 by mx0b-001b2d01.pphosted.com with ESMTP id 30pd53g8rh-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Tue, 28 Apr 2020 00:17:28 -0400
Received: from m0098420.ppops.net (m0098420.ppops.net [127.0.0.1])
 by pps.reinject (8.16.0.36/8.16.0.36) with SMTP id 03S47gjm130005;
 Tue, 28 Apr 2020 00:17:27 -0400
Received: from ppma04fra.de.ibm.com (6a.4a.5195.ip4.static.sl-reverse.com
 [149.81.74.106])
 by mx0b-001b2d01.pphosted.com with ESMTP id 30pd53g8pd-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Tue, 28 Apr 2020 00:17:26 -0400
Received: from pps.filterd (ppma04fra.de.ibm.com [127.0.0.1])
 by ppma04fra.de.ibm.com (8.16.0.27/8.16.0.27) with SMTP id 03S45tWP018939;
 Tue, 28 Apr 2020 04:17:24 GMT
Received: from b06cxnps4074.portsmouth.uk.ibm.com
 (d06relay11.portsmouth.uk.ibm.com [9.149.109.196])
 by ppma04fra.de.ibm.com with ESMTP id 30mcu58gsm-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Tue, 28 Apr 2020 04:17:24 +0000
Received: from d06av25.portsmouth.uk.ibm.com (d06av25.portsmouth.uk.ibm.com
 [9.149.105.61])
 by b06cxnps4074.portsmouth.uk.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id
 03S4HLNp41943218
 (version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 28 Apr 2020 04:17:21 GMT
Received: from d06av25.portsmouth.uk.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id 79F1911C052;
 Tue, 28 Apr 2020 04:17:21 +0000 (GMT)
Received: from d06av25.portsmouth.uk.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id 6834611C04A;
 Tue, 28 Apr 2020 04:17:14 +0000 (GMT)
Received: from [9.199.43.234] (unknown [9.199.43.234])
 by d06av25.portsmouth.uk.ibm.com (Postfix) with ESMTP;
 Tue, 28 Apr 2020 04:17:14 +0000 (GMT)
Subject: Re: [PATCH v3 2/4] hugetlbfs: move hugepagesz= parsing to arch
 independent code
To: Mike Kravetz <mike.kravetz@oracle.com>
References: <20200417185049.275845-1-mike.kravetz@oracle.com>
 <20200417185049.275845-3-mike.kravetz@oracle.com>
 <7583dfcc-62d8-2a54-6eef-bcb4e01129b3@gmail.com>
 <5a380060-38db-b690-1003-678ca0f28f07@oracle.com>
 <b1f04f9f-fa46-c2a0-7693-4a0679d2a1ee@oracle.com>
From: Sandipan Das <sandipan@linux.ibm.com>
Message-ID: <9c82a0b1-db0e-9b34-88a1-bc810d6b5eec@linux.ibm.com>
Date: Tue, 28 Apr 2020 09:47:13 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <b1f04f9f-fa46-c2a0-7693-4a0679d2a1ee@oracle.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
X-TM-AS-GCONF: 00
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.138, 18.0.676
 definitions=2020-04-27_17:2020-04-27,
 2020-04-27 signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 adultscore=0
 suspectscore=0 phishscore=0 priorityscore=1501 mlxscore=0 mlxlogscore=999
 bulkscore=0 lowpriorityscore=0 clxscore=1011 malwarescore=0
 impostorscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2003020000 definitions=main-2004280027
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200427_211802_716578_7D8CBFF6 
X-CRM114-Status: GOOD (  28.89  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [148.163.158.5 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: linux-doc@vger.kernel.org, Catalin Marinas <catalin.marinas@arm.com>,
 Dave Hansen <dave.hansen@linux.intel.com>,
 Heiko Carstens <heiko.carstens@de.ibm.com>, Peter Xu <peterx@redhat.com>,
 linux-mm@kvack.org, Paul Mackerras <paulus@samba.org>,
 sparclinux@vger.kernel.org, linux-riscv@lists.infradead.org,
 Will Deacon <will@kernel.org>, Mina Almasry <almasrymina@google.com>,
 linux-s390@vger.kernel.org, Jonathan Corbet <corbet@lwn.net>,
 Christian Borntraeger <borntraeger@de.ibm.com>, Ingo Molnar <mingo@redhat.com>,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 Longpeng <longpeng2@huawei.com>, Albert Ou <aou@eecs.berkeley.edu>,
 Vasily Gorbik <gor@linux.ibm.com>, Paul Walmsley <paul.walmsley@sifive.com>,
 Thomas Gleixner <tglx@linutronix.de>, linux-arm-kernel@lists.infradead.org,
 Christophe Leroy <christophe.leroy@c-s.fr>,
 Nitesh Narayan Lal <nitesh@redhat.com>, Randy Dunlap <rdunlap@infradead.org>,
 linux-kernel@vger.kernel.org, Palmer Dabbelt <palmer@dabbelt.com>,
 Andrew Morton <akpm@linux-foundation.org>, linuxppc-dev@lists.ozlabs.org,
 "David S.Miller" <davem@davemloft.net>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Hi Mike,

On 28/04/20 12:39 am, Mike Kravetz wrote:
> On 4/27/20 10:25 AM, Mike Kravetz wrote:
>> On 4/26/20 10:04 PM, Sandipan Das wrote:
>>> On 18/04/20 12:20 am, Mike Kravetz wrote:
>>>> Now that architectures provide arch_hugetlb_valid_size(), parsing
>>>> of "hugepagesz=" can be done in architecture independent code.
>>>
>>> This isn't working as expected on powerpc64.
>>>
>>>   [    0.000000] Kernel command line: root=UUID=dc7b49cf-95a2-4996-8e7d-7c64ddc7a6ff hugepagesz=16G hugepages=2 
>>>   [    0.000000] HugeTLB: huge pages not supported, ignoring hugepagesz = 16G
>>>   [    0.000000] HugeTLB: huge pages not supported, ignoring hugepages = 2
>>>   [    0.284177] HugeTLB registered 16.0 MiB page size, pre-allocated 0 pages
>>>   [    0.284182] HugeTLB registered 16.0 GiB page size, pre-allocated 0 pages
>>>   [    2.585062]     hugepagesz=16G
>>>   [    2.585063]     hugepages=2
>>>
>>
>> In the new arch independent version of hugepages_setup, I added the following
>> code in patch 4 off this series:
>>
>>> +	if (!hugepages_supported()) {
>>> +		pr_warn("HugeTLB: huge pages not supported, ignoring hugepages = %s\n", s);
>>> +		return 0;
>>> +	}
>>> +
>>
>> The easy solution is to remove all the hugepages_supported() checks from
>> command line parsing routines and rely on the later check in hugetlb_init().
> 
> Here is a patch to address the issue.  Sorry, as my series breaks all hugetlb
> command line processing on powerpc.
> 
> Sandipan, can you test the following patch?
> 

The following patch does fix the issue. Thanks.

Tested-by: Sandipan Das <sandipan@linux.ibm.com>


> From 480fe2847361e2a85aeec1fb39fe643bb7100a07 Mon Sep 17 00:00:00 2001
> From: Mike Kravetz <mike.kravetz@oracle.com>
> Date: Mon, 27 Apr 2020 11:37:30 -0700
> Subject: [PATCH] hugetlbfs: fix changes to command line processing
> 
> Previously, a check for hugepages_supported was added before processing
> hugetlb command line parameters.  On some architectures such as powerpc,
> hugepages_supported() is not set to true until after command line
> processing.  Therefore, no hugetlb command line parameters would be
> accepted.
> 
> Remove the additional checks for hugepages_supported.  In hugetlb_init,
> print a warning if !hugepages_supported and command line parameters were
> specified.
> 
> Signed-off-by: Mike Kravetz <mike.kravetz@oracle.com>
> ---
>  mm/hugetlb.c | 20 ++++----------------
>  1 file changed, 4 insertions(+), 16 deletions(-)
> 
> diff --git a/mm/hugetlb.c b/mm/hugetlb.c
> index 1075abdb5717..5548e8851b93 100644
> --- a/mm/hugetlb.c
> +++ b/mm/hugetlb.c
> @@ -3212,8 +3212,11 @@ static int __init hugetlb_init(void)
>  {
>  	int i;
>  
> -	if (!hugepages_supported())
> +	if (!hugepages_supported()) {
> +		if (hugetlb_max_hstate || default_hstate_max_huge_pages)
> +			pr_warn("HugeTLB: huge pages not supported, ignoring associated command-line parameters\n");
>  		return 0;
> +	}
>  
>  	/*
>  	 * Make sure HPAGE_SIZE (HUGETLB_PAGE_ORDER) hstate exists.  Some
> @@ -3315,11 +3318,6 @@ static int __init hugepages_setup(char *s)
>  	unsigned long *mhp;
>  	static unsigned long *last_mhp;
>  
> -	if (!hugepages_supported()) {
> -		pr_warn("HugeTLB: huge pages not supported, ignoring hugepages = %s\n", s);
> -		return 0;
> -	}
> -
>  	if (!parsed_valid_hugepagesz) {
>  		pr_warn("HugeTLB: hugepages=%s does not follow a valid hugepagesz, ignoring\n", s);
>  		parsed_valid_hugepagesz = true;
> @@ -3372,11 +3370,6 @@ static int __init hugepagesz_setup(char *s)
>  	struct hstate *h;
>  
>  	parsed_valid_hugepagesz = false;
> -	if (!hugepages_supported()) {
> -		pr_warn("HugeTLB: huge pages not supported, ignoring hugepagesz = %s\n", s);
> -		return 0;
> -	}
> -
>  	size = (unsigned long)memparse(s, NULL);
>  
>  	if (!arch_hugetlb_valid_size(size)) {
> @@ -3424,11 +3417,6 @@ static int __init default_hugepagesz_setup(char *s)
>  	unsigned long size;
>  
>  	parsed_valid_hugepagesz = false;
> -	if (!hugepages_supported()) {
> -		pr_warn("HugeTLB: huge pages not supported, ignoring default_hugepagesz = %s\n", s);
> -		return 0;
> -	}
> -
>  	if (parsed_default_hugepagesz) {
>  		pr_err("HugeTLB: default_hugepagesz previously specified, ignoring %s\n", s);
>  		return 0;
> 

