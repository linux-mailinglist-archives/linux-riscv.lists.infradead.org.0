Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 565CB1A4A66
	for <lists+linux-riscv@lfdr.de>; Fri, 10 Apr 2020 21:27:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=egTRqYjBdzetC6Rav2slWK+++8cSaJtQCNbovjaGoc8=; b=uqCNywEajy9uLl
	Nn6b9gPA3Q+UXKTX/OasBa5afBzloneLcFJzn64yEae+tC0hZ7+PxLwQJ4Vy0okH3gMCKvKDhwoU2
	YCbJi2Xg6+Q1Dz6pTtpU5Qc2XRhUqw9bJZk6kwEkXUzlL53d+Ntw/VdVQHqaRsKrnmrOz4UNT2cH2
	4FfRnepoeMImtLAJ5LYVHCiaRhfKL5AndhfxFsOBAKznN8hPV76au0hsALfbW4zjrVzkRtVm5WfNS
	6TgKoP3i4H49CAHpOCcZvIya7yZJpqZcmexbwWHJjxiDwcwZySvVrzT1a0jkGqdjM8zLyUplKJplP
	iNLpmDzNUZjRY2Ln/2CQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jMzIy-0007zj-Dl; Fri, 10 Apr 2020 19:27:08 +0000
Received: from us-smtp-delivery-1.mimecast.com ([207.211.31.120]
 helo=us-smtp-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jMzIu-0007y9-SF
 for linux-riscv@lists.infradead.org; Fri, 10 Apr 2020 19:27:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1586546822;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=egTRqYjBdzetC6Rav2slWK+++8cSaJtQCNbovjaGoc8=;
 b=GcfgONn4XaHWe5LZKohORDPRkoly8L0FK9eLsVPvVPvXOwI961gPynIlhjo7dV5hfVE5qV
 yZcoN/6b09F22GU5Ttbby0oh6U2jAlvqzUbCpZAMKpIrInsidH1achRW0bTEvoIVeMo5go
 1EjvCmgF0/Ga6xmL/EUpmc6HYi5gCFI=
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com
 [209.85.160.198]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-441-2NeBhHvsNkuj2M4JVFaKvQ-1; Fri, 10 Apr 2020 15:27:00 -0400
X-MC-Unique: 2NeBhHvsNkuj2M4JVFaKvQ-1
Received: by mail-qt1-f198.google.com with SMTP id m4so2671951qth.12
 for <linux-riscv@lists.infradead.org>; Fri, 10 Apr 2020 12:27:00 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=ddNmEkCT3NuYAPr19Gh+8RyFM7t2I+OUmUTTKHVjsXQ=;
 b=MIYUY6tVvq0Uhs8kdfkxcLmKWFL6qplNXE6zNy+VB7H3PoY1Ym8zMGM/+g9kWbYLfk
 Ci5d/NT9Y0f32J2xWxNeZWY+R5hUy+9lvkk6PTQBK7/V5y21skvNdVKSWLgWJanH5JpC
 GDLVemwENJj6QqGry7SavXHPJlcoeT0Ff4AahNw9vOxkPEEP80dCJWwcgOLZckZQT8q3
 adebe5DjZ5tz95LuwYNoHa4xZ8qwf0x1C4BLpgpX0+jERGZ6iGfWNHXHPNzCwM40K+fi
 8OKRK45ow4KVvgpR4Oo48oIGQdX3JQ34jNW9vSiMNCSJUBW+0GIGIUjMT7XxlpQwGwBn
 kz8w==
X-Gm-Message-State: AGi0PuYC8ksTYhFBQ41rE0KpVzADnMAsE/4XJNGkHT+Y+mSZ1uW4IBpP
 Y8LWspQfJgHxAIdGYRbI2WVkZS2YWoDMUfveukydhHvsha4oW6Rs15QYH9W1r7xSgmisQ3wfFsZ
 jlDaIBuuESlwhS0RfmBZm7nOohRJt
X-Received: by 2002:ac8:2c66:: with SMTP id e35mr769602qta.188.1586546820322; 
 Fri, 10 Apr 2020 12:27:00 -0700 (PDT)
X-Google-Smtp-Source: APiQypJUBND9mw4a79BsRjlZQBzcyo9K+K4n4uLp4F1mRayVM5WnYx0Zu2cY7436wozu46yjuIupKQ==
X-Received: by 2002:ac8:2c66:: with SMTP id e35mr769568qta.188.1586546820098; 
 Fri, 10 Apr 2020 12:27:00 -0700 (PDT)
Received: from xz-x1 ([2607:9880:19c0:32::2])
 by smtp.gmail.com with ESMTPSA id o33sm2321940qtj.62.2020.04.10.12.26.57
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 10 Apr 2020 12:26:59 -0700 (PDT)
Date: Fri, 10 Apr 2020 15:26:56 -0400
From: Peter Xu <peterx@redhat.com>
To: Mike Kravetz <mike.kravetz@oracle.com>
Subject: Re: [PATCH v2 2/4] hugetlbfs: move hugepagesz= parsing to arch
 independent code
Message-ID: <20200410192656.GE3172@xz-x1>
References: <20200401183819.20647-1-mike.kravetz@oracle.com>
 <20200401183819.20647-3-mike.kravetz@oracle.com>
MIME-Version: 1.0
In-Reply-To: <20200401183819.20647-3-mike.kravetz@oracle.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Content-Disposition: inline
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200410_122704_994885_22076142 
X-CRM114-Status: GOOD (  11.77  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [207.211.31.120 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 linux-riscv@lists.infradead.org, Will Deacon <will@kernel.org>,
 Mina Almasry <almasrymina@google.com>, linux-s390@vger.kernel.org,
 Jonathan Corbet <corbet@lwn.net>,
 Christian Borntraeger <borntraeger@de.ibm.com>, Ingo Molnar <mingo@redhat.com>,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 Longpeng <longpeng2@huawei.com>, Albert Ou <aou@eecs.berkeley.edu>,
 Vasily Gorbik <gor@linux.ibm.com>, Paul Walmsley <paul.walmsley@sifive.com>,
 Thomas Gleixner <tglx@linutronix.de>, linux-arm-kernel@lists.infradead.org,
 Christophe Leroy <christophe.leroy@c-s.fr>, linux-kernel@vger.kernel.org,
 Palmer Dabbelt <palmer@dabbelt.com>, Andrew Morton <akpm@linux-foundation.org>,
 linuxppc-dev@lists.ozlabs.org, "David S . Miller" <davem@davemloft.net>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Wed, Apr 01, 2020 at 11:38:17AM -0700, Mike Kravetz wrote:
> Now that architectures provide arch_hugetlb_valid_size(), parsing
> of "hugepagesz=3D" can be done in architecture independent code.
> Create a single routine to handle hugepagesz=3D parsing and remove
> all arch specific routines.  We can also remove the interface
> hugetlb_bad_size() as this is no longer used outside arch independent
> code.
>=20
> This also provides consistent behavior of hugetlbfs command line
> options.  The hugepagesz=3D option should only be specified once for
> a specific size, but some architectures allow multiple instances.
> This appears to be more of an oversight when code was added by some
> architectures to set up ALL huge pages sizes.
>=20
> Signed-off-by: Mike Kravetz <mike.kravetz@oracle.com>

This could change the error messages for a wrong setup on archs, but I
guess it's not a big deal, assuming even to capture error people will
majorly still look for error lines in general..

Reviewed-by: Peter Xu <peterx@redhat.com>

--=20
Peter Xu


