Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E4F731FCA6A
	for <lists+linux-riscv@lfdr.de>; Wed, 17 Jun 2020 12:03:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To
	:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=j2rV88L3pSGD6hja2Ot1WmM8kbHO5oF0oD/VtFogimI=; b=llVZt8b8wHSV3lHhlKbZ9nZv3
	drZpuYtR5M+wzG0jZE+abDFmQtHvHPAH8SDdulvrK0au9qGuyGrGkEDILsv1uPhbY9Bn+QQ0CINhY
	ydyzFTZY3Ri8YDXm8pFUJWS0pB3WWjyELNcTBIamQVud2z6ZoMXiD9dlLfCfP5jgc7AxfBAFOY3Zk
	nlHqDHAjIorOmcz2Q6kMmvvGKKydckBR8ooJzQyWs0XWPqtufc9ceZb1qibjodI3L9lkIBuALi88T
	cP8oQWPQ2Sdve69BjePNA4Hgs7jleNM4YRpWAbBV/iraSj7HW68oDY+6KBq5/wKJO9oY003Bfo0yQ
	TMRSc7wZw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlUuu-0004FS-Sq; Wed, 17 Jun 2020 10:03:36 +0000
Received: from mx0b-001b2d01.pphosted.com ([148.163.158.5])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlUud-00045z-NQ; Wed, 17 Jun 2020 10:03:21 +0000
Received: from pps.filterd (m0127361.ppops.net [127.0.0.1])
 by mx0a-001b2d01.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 05HA2KAQ121051; Wed, 17 Jun 2020 06:02:56 -0400
Received: from pps.reinject (localhost [127.0.0.1])
 by mx0a-001b2d01.pphosted.com with ESMTP id 31q6hvq6ew-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Wed, 17 Jun 2020 06:02:55 -0400
Received: from m0127361.ppops.net (m0127361.ppops.net [127.0.0.1])
 by pps.reinject (8.16.0.36/8.16.0.36) with SMTP id 05HA2QE4121283;
 Wed, 17 Jun 2020 06:02:38 -0400
Received: from ppma04ams.nl.ibm.com (63.31.33a9.ip4.static.sl-reverse.com
 [169.51.49.99])
 by mx0a-001b2d01.pphosted.com with ESMTP id 31q6hvq5rr-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Wed, 17 Jun 2020 06:02:38 -0400
Received: from pps.filterd (ppma04ams.nl.ibm.com [127.0.0.1])
 by ppma04ams.nl.ibm.com (8.16.0.42/8.16.0.42) with SMTP id 05HA1nGG006382;
 Wed, 17 Jun 2020 10:01:50 GMT
Received: from b06avi18878370.portsmouth.uk.ibm.com
 (b06avi18878370.portsmouth.uk.ibm.com [9.149.26.194])
 by ppma04ams.nl.ibm.com with ESMTP id 31q6ch8t8m-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Wed, 17 Jun 2020 10:01:49 +0000
Received: from d06av23.portsmouth.uk.ibm.com (d06av23.portsmouth.uk.ibm.com
 [9.149.105.59])
 by b06avi18878370.portsmouth.uk.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP
 id 05HA1lRV64815568
 (version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 17 Jun 2020 10:01:47 GMT
Received: from d06av23.portsmouth.uk.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id 079CCA4053;
 Wed, 17 Jun 2020 10:01:47 +0000 (GMT)
Received: from d06av23.portsmouth.uk.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id AA8EBA4059;
 Wed, 17 Jun 2020 10:01:43 +0000 (GMT)
Received: from linux.ibm.com (unknown [9.148.204.35])
 by d06av23.portsmouth.uk.ibm.com (Postfix) with ESMTPS;
 Wed, 17 Jun 2020 10:01:43 +0000 (GMT)
Date: Wed, 17 Jun 2020 13:01:41 +0300
From: Mike Rapoport <rppt@linux.ibm.com>
To: Anshuman Khandual <anshuman.khandual@arm.com>
Subject: Re: [PATCH V3 4/4] Documentation/mm: Add descriptions for arch page
 table helpers
Message-ID: <20200617100141.GC6493@linux.ibm.com>
References: <1592192277-8421-1-git-send-email-anshuman.khandual@arm.com>
 <1592192277-8421-5-git-send-email-anshuman.khandual@arm.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1592192277-8421-5-git-send-email-anshuman.khandual@arm.com>
X-TM-AS-GCONF: 00
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.216, 18.0.687
 definitions=2020-06-17_03:2020-06-16,
 2020-06-17 signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 suspectscore=1
 spamscore=0 clxscore=1011 mlxscore=0 lowpriorityscore=0 bulkscore=0
 mlxlogscore=999 cotscore=-2147483648 adultscore=0 phishscore=0
 priorityscore=1501 impostorscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.12.0-2004280000 definitions=main-2006170075
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200617_030319_878787_228EA945 
X-CRM114-Status: GOOD (  14.58  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [148.163.158.5 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [148.163.158.5 listed in wl.mailspike.net]
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
Cc: linux-doc@vger.kernel.org,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 Heiko Carstens <heiko.carstens@de.ibm.com>, linux-mm@kvack.org,
 Paul Mackerras <paulus@samba.org>, "H. Peter Anvin" <hpa@zytor.com>,
 linux-riscv@lists.infradead.org, Will Deacon <will@kernel.org>,
 linux-arch@vger.kernel.org, linux-s390@vger.kernel.org,
 Jonathan Corbet <corbet@lwn.net>, Michael Ellerman <mpe@ellerman.id.au>,
 x86@kernel.org, Christian Borntraeger <borntraeger@de.ibm.com>,
 Ingo Molnar <mingo@redhat.com>, linux-arm-kernel@lists.infradead.org,
 ziy@nvidia.com, Catalin Marinas <catalin.marinas@arm.com>,
 linux-snps-arc@lists.infradead.org, Vasily Gorbik <gor@linux.ibm.com>,
 Borislav Petkov <bp@alien8.de>, Paul Walmsley <paul.walmsley@sifive.com>,
 "Kirill A . Shutemov" <kirill@shutemov.name>,
 Thomas Gleixner <tglx@linutronix.de>, gerald.schaefer@de.ibm.com,
 christophe.leroy@c-s.fr, Vineet Gupta <vgupta@synopsys.com>,
 linux-kernel@vger.kernel.org, Palmer Dabbelt <palmer@dabbelt.com>,
 Andrew Morton <akpm@linux-foundation.org>, linuxppc-dev@lists.ozlabs.org
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Mon, Jun 15, 2020 at 09:07:57AM +0530, Anshuman Khandual wrote:
> This adds a specific description file for all arch page table helpers which
> is in sync with the semantics being tested via CONFIG_DEBUG_VM_PGTABLE. All
> future changes either to these descriptions here or the debug test should
> always remain in sync.
> 
> Cc: Jonathan Corbet <corbet@lwn.net>
> Cc: Andrew Morton <akpm@linux-foundation.org>
> Cc: Mike Rapoport <rppt@linux.ibm.com>
> Cc: Vineet Gupta <vgupta@synopsys.com>
> Cc: Catalin Marinas <catalin.marinas@arm.com>
> Cc: Will Deacon <will@kernel.org>
> Cc: Benjamin Herrenschmidt <benh@kernel.crashing.org>
> Cc: Paul Mackerras <paulus@samba.org>
> Cc: Michael Ellerman <mpe@ellerman.id.au>
> Cc: Heiko Carstens <heiko.carstens@de.ibm.com>
> Cc: Vasily Gorbik <gor@linux.ibm.com>
> Cc: Christian Borntraeger <borntraeger@de.ibm.com>
> Cc: Thomas Gleixner <tglx@linutronix.de>
> Cc: Ingo Molnar <mingo@redhat.com>
> Cc: Borislav Petkov <bp@alien8.de>
> Cc: "H. Peter Anvin" <hpa@zytor.com>
> Cc: Kirill A. Shutemov <kirill@shutemov.name>
> Cc: Paul Walmsley <paul.walmsley@sifive.com>
> Cc: Palmer Dabbelt <palmer@dabbelt.com>
> Cc: linux-snps-arc@lists.infradead.org
> Cc: linux-arm-kernel@lists.infradead.org
> Cc: linuxppc-dev@lists.ozlabs.org
> Cc: linux-s390@vger.kernel.org
> Cc: linux-riscv@lists.infradead.org
> Cc: x86@kernel.org
> Cc: linux-arch@vger.kernel.org
> Cc: linux-mm@kvack.org
> Cc: linux-doc@vger.kernel.org
> Cc: linux-kernel@vger.kernel.org
> Suggested-by: Mike Rapoport <rppt@kernel.org>
> Signed-off-by: Anshuman Khandual <anshuman.khandual@arm.com>
> ---
>  Documentation/vm/arch_pgtable_helpers.rst | 258 ++++++++++++++++++++++
>  mm/debug_vm_pgtable.c                     |   6 +
>  2 files changed, 264 insertions(+)
>  create mode 100644 Documentation/vm/arch_pgtable_helpers.rst

Acked-by: Mike Rapoport <rppt@linux.ibm.com>


