Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B44A71CE343
	for <lists+linux-riscv@lfdr.de>; Mon, 11 May 2020 20:54:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lmEoEgyjfI3GJtDHmilX9SzLNvOcuTcOvW+PKUiq8MI=; b=D+gFEtrnI0GZmf
	i0ZUZQhr4dAFVrUASJDUPRCV9XuY/9tyzO8gtr+F+Lf8IPdLW//iyHjVdYSaeMa9Xe7w7l9kClM7E
	3aeotILU8zkHv/v80S2O0v2vds26rctIzT+OsPohfeyqs4koBks3bABUESZRbjh1eHZvOv3r4BBeR
	gy1cIypKENk9/Bvm24nMEPtaOi0o055YCKODp+hXB1YO6PKqSfw6IShHRmhEZ2sNjoSVFNk1cTHKI
	jonlp0FkK/uyD6+tnyx1qW3HxCOiCS8wlyVyhohXxnVoZC1ncAyg56yi5+cjku8Z9A7JIrgsVPkmL
	n+7wdJjdijS7759mUe2A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYDZE-0006hT-Or; Mon, 11 May 2020 18:54:20 +0000
Received: from userp2120.oracle.com ([156.151.31.85])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYDZ9-0006gS-Oc; Mon, 11 May 2020 18:54:17 +0000
Received: from pps.filterd (userp2120.oracle.com [127.0.0.1])
 by userp2120.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 04BIl1RS193726;
 Mon, 11 May 2020 18:52:49 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=subject : to : cc :
 references : from : message-id : date : mime-version : in-reply-to :
 content-type : content-transfer-encoding; s=corp-2020-01-29;
 bh=lmEoEgyjfI3GJtDHmilX9SzLNvOcuTcOvW+PKUiq8MI=;
 b=EHSd0gyOZ6mJk8AUfljgZqe/l84M3dxdDwcVRDw3lihli7/i2Ooh9bj5w+NhMbvq+dFl
 +FaLdDGTwvHat1D1fTX9EysW7L+8m1FqNmjnP1V9Grb4VhLqayw4Rd6B5b5ZCDBnZrfU
 JWaJTpVkRmmbWYekhkSap850c0mJaWwjl9pi6axUTNK4z+ZIX+AX003KGJoo239cmPWE
 oqeYy7f7nIQBOOKDabvZBLSDOUgQ6SCUSohzsOuqTGGHU+E0BbpmeZ+V/KBXTwEmpuzQ
 IyfctIDTRsMjj+/zrpJ901i0t+bUlmAVcrTybfNsnwobMod1pi0U9lWm3kgq5X7GLtfk dg== 
Received: from userp3020.oracle.com (userp3020.oracle.com [156.151.31.79])
 by userp2120.oracle.com with ESMTP id 30x3mbpvsc-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=FAIL);
 Mon, 11 May 2020 18:52:48 +0000
Received: from pps.filterd (userp3020.oracle.com [127.0.0.1])
 by userp3020.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 04BImDbQ039635;
 Mon, 11 May 2020 18:52:48 GMT
Received: from userv0122.oracle.com (userv0122.oracle.com [156.151.31.75])
 by userp3020.oracle.com with ESMTP id 30x69rjjya-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Mon, 11 May 2020 18:52:48 +0000
Received: from abhmp0011.oracle.com (abhmp0011.oracle.com [141.146.116.17])
 by userv0122.oracle.com (8.14.4/8.14.4) with ESMTP id 04BIqcwi024982;
 Mon, 11 May 2020 18:52:39 GMT
Received: from [192.168.2.157] (/73.164.160.178)
 by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Mon, 11 May 2020 11:52:37 -0700
Subject: Re: [PATCH V3 2/3] mm/hugetlb: Define a generic fallback for
 is_hugepage_only_range()
To: Anshuman Khandual <anshuman.khandual@arm.com>, linux-mm@kvack.org,
 akpm@linux-foundation.org
References: <1588907271-11920-1-git-send-email-anshuman.khandual@arm.com>
 <1588907271-11920-3-git-send-email-anshuman.khandual@arm.com>
 <9fc622e1-45ff-b79f-ebe0-35614837456c@oracle.com>
 <c21ab871-da06-baf6-ba31-80b13402b8c9@arm.com>
From: Mike Kravetz <mike.kravetz@oracle.com>
Message-ID: <ab931b52-1f1b-1ff3-47ee-377de3ed1a98@oracle.com>
Date: Mon, 11 May 2020 11:52:34 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <c21ab871-da06-baf6-ba31-80b13402b8c9@arm.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9618
 signatures=668687
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 bulkscore=0
 malwarescore=0 adultscore=0
 spamscore=0 suspectscore=0 mlxscore=0 mlxlogscore=999 phishscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2003020000
 definitions=main-2005110142
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9618
 signatures=668687
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 impostorscore=0
 mlxscore=0 suspectscore=0 bulkscore=0 mlxlogscore=999 phishscore=0
 malwarescore=0 lowpriorityscore=0 spamscore=0 adultscore=0 clxscore=1015
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2003020000
 definitions=main-2005110142
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200511_115415_937947_AFC5F65A 
X-CRM114-Status: GOOD (  16.94  )
X-Spam-Score: -2.7 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [156.151.31.85 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [156.151.31.85 listed in wl.mailspike.net]
 -0.2 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Rich Felker <dalias@libc.org>, linux-ia64@vger.kernel.org,
 linux-sh@vger.kernel.org, Catalin Marinas <catalin.marinas@arm.com>,
 Heiko Carstens <heiko.carstens@de.ibm.com>, linux-kernel@vger.kernel.org,
 "James E.J. Bottomley" <James.Bottomley@HansenPartnership.com>,
 Paul Mackerras <paulus@samba.org>, "H. Peter Anvin" <hpa@zytor.com>,
 sparclinux@vger.kernel.org, linux-riscv@lists.infradead.org,
 Will Deacon <will@kernel.org>, linux-arch@vger.kernel.org,
 linux-s390@vger.kernel.org, Yoshinori Sato <ysato@users.sourceforge.jp>,
 Michael Ellerman <mpe@ellerman.id.au>, Helge Deller <deller@gmx.de>,
 x86@kernel.org, Russell King <linux@armlinux.org.uk>,
 Christian Borntraeger <borntraeger@de.ibm.com>, Ingo Molnar <mingo@redhat.com>,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 Fenghua Yu <fenghua.yu@intel.com>, Vasily Gorbik <gor@linux.ibm.com>,
 Thomas Bogendoerfer <tsbogend@alpha.franken.de>,
 Borislav Petkov <bp@alien8.de>, Paul Walmsley <paul.walmsley@sifive.com>,
 Thomas Gleixner <tglx@linutronix.de>, linux-arm-kernel@lists.infradead.org,
 Tony Luck <tony.luck@intel.com>, linux-parisc@vger.kernel.org,
 linux-mips@vger.kernel.org, Palmer Dabbelt <palmer@dabbelt.com>,
 linuxppc-dev@lists.ozlabs.org, "David S. Miller" <davem@davemloft.net>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On 5/10/20 8:14 PM, Anshuman Khandual wrote:
> On 05/09/2020 03:52 AM, Mike Kravetz wrote:
>> On 5/7/20 8:07 PM, Anshuman Khandual wrote:
>>
>> Did you try building without CONFIG_HUGETLB_PAGE defined?  I'm guessing
> 
> Yes I did for multiple platforms (s390, arm64, ia64, x86, powerpc etc).
> 
>> that you need a stub for is_hugepage_only_range().  Or, perhaps add this
>> to asm-generic/hugetlb.h?
>>
> There is already a stub (include/linux/hugetlb.h) when !CONFIG_HUGETLB_PAGE.
> 

Thanks!  I missed that stub in the existing code.  I like the removal of
redundant code.

Acked-by: Mike Kravetz <mike.kravetz@oracle.com>

-- 
Mike Kravetz

