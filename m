Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 186E717F152
	for <lists+linux-riscv@lfdr.de>; Tue, 10 Mar 2020 08:57:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:
	Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=jppQhjiwVqrEQqlrs9t0ukiEGDcChGuQa/VtEc05HdQ=; b=oeMy/kWyK6QukSH6d5RAyaL+F
	hqZ+I/nmLpR7SW3bx3GJX1iqTu4WpQ9y2XMXKy24VInrKvVesNWN3Hv7DAo/BhqC1dUL2lmv9D3Jt
	voXNm7YPBQ4bswDKD2ZBgr7Bm0CHidTrWEZuIK29nx+24Rxj1Ig/tNgJnDEKghIrCIWXwES0kGOx6
	4P2SavD/PlKTbjFNIWySbscRtbyWfr9SgGf4Rvj4Z/5mDDZllqBzGlsR5I6JDFbMiUx+O5hga542w
	VhGTNDs0iHRazPQxMn4kM/a/XK6NeV1wEvUSbSTYy/wlxOHqcerynln2MHUa+CKD+equhtL4VwB23
	lBuBN8GDw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBZlo-0007i4-Am; Tue, 10 Mar 2020 07:57:44 +0000
Received: from mx0b-001b2d01.pphosted.com ([148.163.158.5])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBZlk-0007eZ-AL
 for linux-riscv@lists.infradead.org; Tue, 10 Mar 2020 07:57:42 +0000
Received: from pps.filterd (m0127361.ppops.net [127.0.0.1])
 by mx0a-001b2d01.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 02A7sE2E169969
 for <linux-riscv@lists.infradead.org>; Tue, 10 Mar 2020 03:56:40 -0400
Received: from e06smtp02.uk.ibm.com (e06smtp02.uk.ibm.com [195.75.94.98])
 by mx0a-001b2d01.pphosted.com with ESMTP id 2ym7abmwtx-1
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=NOT)
 for <linux-riscv@lists.infradead.org>; Tue, 10 Mar 2020 03:56:39 -0400
Received: from localhost
 by e06smtp02.uk.ibm.com with IBM ESMTP SMTP Gateway: Authorized Use Only!
 Violators will be prosecuted
 for <linux-riscv@lists.infradead.org> from <borntraeger@de.ibm.com>;
 Tue, 10 Mar 2020 07:56:36 -0000
Received: from b06cxnps3075.portsmouth.uk.ibm.com (9.149.109.195)
 by e06smtp02.uk.ibm.com (192.168.101.132) with IBM ESMTP SMTP Gateway:
 Authorized Use Only! Violators will be prosecuted; 
 (version=TLSv1/SSLv3 cipher=AES256-GCM-SHA384 bits=256/256)
 Tue, 10 Mar 2020 07:56:31 -0000
Received: from d06av24.portsmouth.uk.ibm.com (mk.ibm.com [9.149.105.60])
 by b06cxnps3075.portsmouth.uk.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id
 02A7uUE356819760
 (version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 10 Mar 2020 07:56:31 GMT
Received: from d06av24.portsmouth.uk.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id D63B642041;
 Tue, 10 Mar 2020 07:56:30 +0000 (GMT)
Received: from d06av24.portsmouth.uk.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id 7E58342049;
 Tue, 10 Mar 2020 07:56:30 +0000 (GMT)
Received: from oc7455500831.ibm.com (unknown [9.152.224.141])
 by d06av24.portsmouth.uk.ibm.com (Postfix) with ESMTP;
 Tue, 10 Mar 2020 07:56:30 +0000 (GMT)
Subject: Re: [linux-next:master 7003/7050] include/linux/virtio_config.h:113:
 undefined reference to `page_reporting_unregister'
To: "Michael S. Tsirkin" <mst@redhat.com>,
 Alexander Duyck <alexander.duyck@gmail.com>
References: <202003091047.yO0wlUGy%lkp@intel.com>
 <CAKgT0UcHjPqF-djZWYXBg=vqkBfp295QihvPrWn6xq_jY4NNYg@mail.gmail.com>
 <20200310015958-mutt-send-email-mst@kernel.org>
From: Christian Borntraeger <borntraeger@de.ibm.com>
Autocrypt: addr=borntraeger@de.ibm.com; prefer-encrypt=mutual; keydata=
 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
 nS4h0HDFPrrp1C2EMVYIQrMokWvlFZbCpsdYbBI=
Date: Tue, 10 Mar 2020 08:56:30 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <20200310015958-mutt-send-email-mst@kernel.org>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit
X-TM-AS-GCONF: 00
x-cbid: 20031007-0008-0000-0000-0000035B0DDF
X-IBM-AV-DETECTION: SAVI=unused REMOTE=unused XFE=unused
x-cbparentid: 20031007-0009-0000-0000-00004A7C4FFD
Message-Id: <7358a9ad-8475-06c8-3b1b-71b022af7b84@de.ibm.com>
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.138, 18.0.572
 definitions=2020-03-10_03:2020-03-09,
 2020-03-10 signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0
 mlxlogscore=999 malwarescore=0 bulkscore=0 spamscore=0 suspectscore=0
 adultscore=0 impostorscore=0 mlxscore=0 phishscore=0 priorityscore=1501
 clxscore=1011 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2001150001 definitions=main-2003100052
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200310_005740_483056_D02A66FB 
X-CRM114-Status: GOOD (  26.72  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
Cc: anup.patel@wdc.com, kbuild test robot <lkp@intel.com>,
 Linux Memory Management List <linux-mm@kvack.org>, palmerdabbelt@google.com,
 atish.patra@wdc.com, alistair.francis@wdc.com, linux-riscv@lists.infradead.org,
 Andrew Morton <akpm@linux-foundation.org>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org


On 10.03.20 07:08, Michael S. Tsirkin wrote:
> On Mon, Mar 09, 2020 at 07:19:51PM -0700, Alexander Duyck wrote:
>> On Sun, Mar 8, 2020 at 7:54 PM kbuild test robot <lkp@intel.com> wrote:
>>>
>>> tree:   https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git master
>>> head:   b86a6a241b7c60ca7a6ca4fb3c0d2aedbbf2c1b6
>>> commit: 120359931943d2b801ce51a1a045dcc0a5d1a55b [7003/7050] Merge branch 'akpm-current/current'
>>> config: riscv-randconfig-a001-20200308 (attached as .config)
>>> compiler: riscv64-linux-gcc (GCC) 7.5.0
>>> reproduce:
>>>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>>>         chmod +x ~/bin/make.cross
>>>         git checkout 120359931943d2b801ce51a1a045dcc0a5d1a55b
>>>         # save the attached .config to linux build tree
>>>         GCC_VERSION=7.5.0 make.cross ARCH=riscv
>>>
>>> If you fix the issue, kindly add following tag
>>> Reported-by: kbuild test robot <lkp@intel.com>
>>>
>>> All errors (new ones prefixed by >>):
>>>
>>>    drivers/virtio/virtio_balloon.o: In function `leak_balloon':
>>>    drivers/virtio/virtio_balloon.c:281: undefined reference to `balloon_page_dequeue'
>>>    drivers/virtio/virtio_balloon.o: In function `__virtio_test_bit':
>>>>> include/linux/virtio_config.h:113: undefined reference to `page_reporting_unregister'
>>>    drivers/virtio/virtio_balloon.o: In function `virtio_cread32':
>>>    include/linux/virtio_config.h:423: undefined reference to `balloon_page_alloc'
>>>    drivers/virtio/virtio_balloon.o: In function `fill_balloon':
>>>>> drivers/virtio/virtio_balloon.c:233: undefined reference to `balloon_page_enqueue'
>>>    drivers/virtio/virtio_balloon.o: In function `__virtio_test_bit':
>>>>> include/linux/virtio_config.h:113: undefined reference to `page_reporting_register'
>>>    drivers/gpu/drm/virtio/virtgpu_drv.o: In function `virtio_gpu_remove':
>>>    drivers/gpu/drm/virtio/virtgpu_drv.c:139: undefined reference to `drm_dev_unplug'
>>>    drivers/gpu/drm/virtio/virtgpu_drv.c:140: undefined reference to `drm_atomic_helper_shutdown'
>>>    drivers/gpu/drm/virtio/virtgpu_drv.c:141: undefined reference to `drm_dev_put'
>>>    drivers/gpu/drm/virtio/virtgpu_drv.o: In function `virtio_gpu_probe':
>>
>> It looks like somehow the config has CONFIG_VIRTIO_BALLOON enabled,
>> but didn't select CONFIG_MEMORY_BALLOON nor CONFIG_PAGE_REPORTING That
>> shouldn't be possible since in drivers/virtio/Kconfig we have the
>> following:
>> config VIRTIO_BALLOON
>>         tristate "Virtio balloon driver"
>>         depends on VIRTIO
>>         select MEMORY_BALLOON
>>         select PAGE_REPORTING
>>
>> I think I traced the problem down. It looks like it is related to this patch:
>>     RISC-V: Add kconfig option for QEMU virt machine
>>
>>     We add kconfig option for QEMU virt machine and select all
>>     required VIRTIO drivers using this kconfig option.
>>
>>     Signed-off-by: Anup Patel <anup.patel@wdc.com>
>>     Reviewed-by: Atish Patra <atish.patra@wdc.com>
>>     Reviewed-by: Palmer Dabbelt <palmerdabbelt@google.com>
>>     Reviewed-by: Alistair Francis <alistair.francis@wdc.com>
>>     Signed-off-by: Palmer Dabbelt <palmerdabbelt@google.com>
>>
>>
>> The problem is it is using select to enable things that have
>> dependencies, and as a result it is enabling things without enabling
>> the bits needed to support them. That isn't recommended and is
>> actually called out to something to avoid in the kconfig-language
>> documentation:
>> https://elixir.bootlin.com/linux/latest/source/Documentation/kbuild/kconfig-language.rst#L143
> 
> 
> I agree. And when we change virtio we likely won't remember to fix up RISC-V.
> So please don't poke at it from arches.
> The right way to do this IMHO is via ARCH_DEFCONFIG, and using
> a defconfig per board.
> And I think the same applies to s390 and virtio console.
> Christian?

Right. The select of VIRTIO_CONSOLE in S390_GUEST ĺooks more like a historic relic.
Will fix. 


