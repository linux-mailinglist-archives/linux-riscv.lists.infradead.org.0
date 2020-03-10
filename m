Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4BD5118014C
	for <lists+linux-riscv@lfdr.de>; Tue, 10 Mar 2020 16:13:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zX6g4trX2c3PmpE5JD2mJPMvkTC96n/c/wre/x2utsU=; b=oaty2fk9LO1PyK
	PAYEL9YxHq53HizOmxQ0AyJ1bvBdXZG+JowKfVpu8lx3cyy2W4C4a31+kujImpOoAjkNAkbOWgspa
	poixPT414c6LsinchPnvqV3t+jqukTqdUMFXEv7Gcz0Wn38DVFO7/9EXwzJ/GdwrVz/Wg6nl5prU0
	cg95ztGJT1a4VhsugBVkKHE6aIzXfhJL6/e3T5Hg9mSKA3Ww0Vda/UMePOKCvATc5zpCDMvjAfPFg
	BxIyCrj6ZMS465uASGn743oiPjpKpJpIRcCulWLMPM9Ft7Bul29B6qXfPn926gqcBl6WgwV4T5Ee4
	l67XWFikPD78Up+Eqxtg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBgZP-0006Z8-NP; Tue, 10 Mar 2020 15:13:23 +0000
Received: from us-smtp-2.mimecast.com ([205.139.110.61]
 helo=us-smtp-delivery-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBgZL-0006YF-Kr
 for linux-riscv@lists.infradead.org; Tue, 10 Mar 2020 15:13:21 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1583853197;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references:autocrypt:autocrypt;
 bh=zX6g4trX2c3PmpE5JD2mJPMvkTC96n/c/wre/x2utsU=;
 b=CXIZG+MK0GKv5cFqQ8bAikbArW9QxXD5Wn4Skz7LA30PmDk9rJUompGBxLw8uteA3/HlkI
 dEbyUDu1kbDSHyWKRFY9vK0SjFqOI4X3Xqui3MACSbRxQ3Rv6vEIQLddZYKsj4AYE7DDVh
 adahEyn3sr9kN/3T+vWzrhH0luTHy5g=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-170-QeFUzq-6NUikE6APIqo9EA-1; Tue, 10 Mar 2020 11:13:13 -0400
X-MC-Unique: QeFUzq-6NUikE6APIqo9EA-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com
 [10.5.11.13])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 0C148DBA3;
 Tue, 10 Mar 2020 15:13:12 +0000 (UTC)
Received: from [10.36.116.71] (ovpn-116-71.ams2.redhat.com [10.36.116.71])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 908CD92D23;
 Tue, 10 Mar 2020 15:13:04 +0000 (UTC)
Subject: Re: [linux-next:master 7003/7050] include/linux/virtio_config.h:113:
 undefined reference to `page_reporting_unregister'
To: Alexander Duyck <alexander.duyck@gmail.com>
References: <202003091047.yO0wlUGy%lkp@intel.com>
 <CAKgT0UcHjPqF-djZWYXBg=vqkBfp295QihvPrWn6xq_jY4NNYg@mail.gmail.com>
 <293bcd25-934f-dd57-3314-bbcf00833e51@redhat.com>
 <4932d976-1fff-db01-7e79-bd79ad18d96e@redhat.com>
 <CAAhSdy3EztLWJz8rt1K9xTnfUagn9kHGzD6qB8kneZ4UNQfZ_Q@mail.gmail.com>
 <8373ea85-40d8-972c-fb45-dcfc9142f13b@redhat.com>
 <CAKgT0Uco3j_KFKvPKt0GGtfjJQFozqDjnmMYH_9znfKPDoXGVA@mail.gmail.com>
From: David Hildenbrand <david@redhat.com>
Autocrypt: addr=david@redhat.com; prefer-encrypt=mutual; keydata=
 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
Organization: Red Hat GmbH
Message-ID: <a69e43b5-f96a-b55c-98ad-e11fbe6c4bf2@redhat.com>
Date: Tue, 10 Mar 2020 16:13:04 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <CAKgT0Uco3j_KFKvPKt0GGtfjJQFozqDjnmMYH_9znfKPDoXGVA@mail.gmail.com>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200310_081319_780095_DA9826B1 
X-CRM114-Status: GOOD (  19.80  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [205.139.110.61 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Anup Patel <anup.patel@wdc.com>, kbuild test robot <lkp@intel.com>,
 Linux Memory Management List <linux-mm@kvack.org>,
 Anup Patel <anup@brainfault.org>, Palmer Dabbelt <palmerdabbelt@google.com>,
 Atish Patra <atish.patra@wdc.com>, Alistair Francis <alistair.francis@wdc.com>,
 linux-riscv <linux-riscv@lists.infradead.org>,
 "Michael S. Tsirkin" <mst@redhat.com>,
 Andrew Morton <akpm@linux-foundation.org>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On 10.03.20 16:08, Alexander Duyck wrote:
> On Tue, Mar 10, 2020 at 5:13 AM David Hildenbrand <david@redhat.com> wrote:
>>
>> On 10.03.20 13:02, Anup Patel wrote:
>>> On Tue, Mar 10, 2020 at 3:56 PM David Hildenbrand <david@redhat.com> wrote:
>>>>
>>>> On 10.03.20 11:22, David Hildenbrand wrote:
>>>>> On 10.03.20 03:19, Alexander Duyck wrote:
>>>>>> On Sun, Mar 8, 2020 at 7:54 PM kbuild test robot <lkp@intel.com> wrote:
>>>>>>>
>>>>>>> tree:   https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git master
>>>>>>> head:   b86a6a241b7c60ca7a6ca4fb3c0d2aedbbf2c1b6
>>>>>>> commit: 120359931943d2b801ce51a1a045dcc0a5d1a55b [7003/7050] Merge branch 'akpm-current/current'
>>>>>>> config: riscv-randconfig-a001-20200308 (attached as .config)
>>>>>>> compiler: riscv64-linux-gcc (GCC) 7.5.0
>>>>>>> reproduce:
>>>>>>>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>>>>>>>         chmod +x ~/bin/make.cross
>>>>>>>         git checkout 120359931943d2b801ce51a1a045dcc0a5d1a55b
>>>>>>>         # save the attached .config to linux build tree
>>>>>>>         GCC_VERSION=7.5.0 make.cross ARCH=riscv
>>>>>>>
>>>>>>> If you fix the issue, kindly add following tag
>>>>>>> Reported-by: kbuild test robot <lkp@intel.com>
>>>>>>>
>>>>>>> All errors (new ones prefixed by >>):
>>>>>>>
>>>>>>>    drivers/virtio/virtio_balloon.o: In function `leak_balloon':
>>>>>>>    drivers/virtio/virtio_balloon.c:281: undefined reference to `balloon_page_dequeue'
>>>>>>>    drivers/virtio/virtio_balloon.o: In function `__virtio_test_bit':
>>>>>>>>> include/linux/virtio_config.h:113: undefined reference to `page_reporting_unregister'
>>>>>>>    drivers/virtio/virtio_balloon.o: In function `virtio_cread32':
>>>>>>>    include/linux/virtio_config.h:423: undefined reference to `balloon_page_alloc'
>>>>>>>    drivers/virtio/virtio_balloon.o: In function `fill_balloon':
>>>>>>>>> drivers/virtio/virtio_balloon.c:233: undefined reference to `balloon_page_enqueue'
>>>>>>>    drivers/virtio/virtio_balloon.o: In function `__virtio_test_bit':
>>>>>>>>> include/linux/virtio_config.h:113: undefined reference to `page_reporting_register'
>>>>>>>    drivers/gpu/drm/virtio/virtgpu_drv.o: In function `virtio_gpu_remove':
>>>>>>>    drivers/gpu/drm/virtio/virtgpu_drv.c:139: undefined reference to `drm_dev_unplug'
>>>>>>>    drivers/gpu/drm/virtio/virtgpu_drv.c:140: undefined reference to `drm_atomic_helper_shutdown'
>>>>>>>    drivers/gpu/drm/virtio/virtgpu_drv.c:141: undefined reference to `drm_dev_put'
>>>>>>>    drivers/gpu/drm/virtio/virtgpu_drv.o: In function `virtio_gpu_probe':
>>>>>>
>>>>>> It looks like somehow the config has CONFIG_VIRTIO_BALLOON enabled,
>>>>>> but didn't select CONFIG_MEMORY_BALLOON nor CONFIG_PAGE_REPORTING That
>>>>>> shouldn't be possible since in drivers/virtio/Kconfig we have the
>>>>>> following:
>>>>>> config VIRTIO_BALLOON
>>>>>>         tristate "Virtio balloon driver"
>>>>>>         depends on VIRTIO
>>>>>>         select MEMORY_BALLOON
>>>>>>         select PAGE_REPORTING
>>>>>
>>>>> IMHO that's perfectly valid. You might want to have ballooning without
>>>>> page compaction (MEMORY_BALLOON). Same with PAGE_REPORTING.
>>>>>
>>>>> AFAIK, "select" will still allow you to disable these things - which
>>>>> used to work fine with MEMORY_BALLOON (did that myself when debugging a
>>>>> compaction issue).
>>>>>
>>>>
>>>> Correction: I disabled BALLOON_COMPACTION back then ... so ignore my
>>>> comment regarding that :)
>>>>
>>>> But we should be able to build VIRTIO_BALLOON without PAGE_REPORTING
>>>> somehow IMHO.
>>>
>>> I have moved all VIRTIO driver selection to defconfigs for RISC-V which was
>>> the case before.
>>>
>>> Here's the patch:
>>> https://patchwork.kernel.org/patch/11429217/
>>
>> Make perfect sense. Still I think we might want to have the option to
>> build without page reporting in the future, similar to building without
>> balloon compaction (which is another discussion).
> 
> As far as page reporting it would be pretty simple to make it so that
> we can build without having it enabled. It would just depend on how we
> want to go about it.
> 
> My past experience has been that you end up having to create a third
> Kconfig option that depends on VIRTIO_BALLOON and selects the other
> config item. Then it is just a matter of figuring out if we want to

Yes, came to the same conclusion.

> use the new define as a wrapper in the virtio balloon driver, or if we
> want to create stubbed-out versions of page reporting and balloon
> compaction.

At least balloon compaction has stubs but still requires special
handling in the balloon drivers (e.g., skip balloon mount etc.)

Nothing urgent.

-- 
Thanks,

David / dhildenb


