Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C9C9AE1083
	for <lists+linux-riscv@lfdr.de>; Wed, 23 Oct 2019 05:23:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=6PUyW88tz8s6nU5qYKYU731rzEyIMpP3eTgw7idrOXE=; b=CPvJfYm0GGO64x
	CkTerXpe7/4WZNvDltdB5l2szXFldKMf+PmeJN0TvHks4GTwKLwulxoMrK8nFZXhoFYDK0bfYRAkH
	hex7LbfmhATH7dXrXGvX8IctbLoRzmtZY5es2/MLCYFmXKl00o3BMyWX+VJJ15kwjmvFWxLWhDNic
	UO3mDWCwNVBxzFY/ypZGNr+temoXc6afHeWR0UcQcJEBT37bbmw35BPtXf1Ek95b/nRsjNMyqX2E/
	5R/O/bqDixzuvJU1gwdhs3Nl3LksOZadKDAwxhBdahrsyemHEtRtNcjdbNTyCVIkeaGf9OTHKC+wg
	K62i/ve+INHOrrF89DGA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iN7FO-0002h4-6h; Wed, 23 Oct 2019 03:23:42 +0000
Received: from szxga04-in.huawei.com ([45.249.212.190] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iN7FC-0002SY-Bw
 for linux-riscv@lists.infradead.org; Wed, 23 Oct 2019 03:23:33 +0000
Received: from DGGEMS407-HUB.china.huawei.com (unknown [172.30.72.60])
 by Forcepoint Email with ESMTP id C9AE1AD42C1A918AAE94;
 Wed, 23 Oct 2019 11:23:25 +0800 (CST)
Received: from localhost.localdomain.localdomain (10.175.113.25) by
 DGGEMS407-HUB.china.huawei.com (10.3.19.207) with Microsoft SMTP Server id
 14.3.439.0; Wed, 23 Oct 2019 11:23:18 +0800
From: Kefeng Wang <wangkefeng.wang@huawei.com>
To: Paul Walmsley <paul.walmsley@sifive.com>
Subject: [PATCH 1/2] riscv: Fix implicit declaration of 'page_to_section'
Date: Wed, 23 Oct 2019 11:23:01 +0800
Message-ID: <20191023032302.160388-1-wangkefeng.wang@huawei.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-Originating-IP: [10.175.113.25]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191022_202331_102321_335FA160 
X-CRM114-Status: UNSURE (   6.94  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.190 listed in list.dnswl.org]
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
Cc: linux-riscv@lists.infradead.org, Palmer Dabbelt <palmer@sifive.com>,
 Logan Gunthorpe <logang@deltatee.com>,
 Kefeng Wang <wangkefeng.wang@huawei.com>, Albert Ou <aou@eecs.berkeley.edu>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

V2l0aCBDT05GSUdfU1BBUlNFTUVNIGFuZCAhQ09ORklHX1NQQVJTRU1FTV9WTUVNTUFQLAoKYXJj
aC9yaXNjdi9pbmNsdWRlL2FzbS9wZ3RhYmxlLmg6IEluIGZ1bmN0aW9uIOKAmG1rX3B0ZeKAmToK
aW5jbHVkZS9hc20tZ2VuZXJpYy9tZW1vcnlfbW9kZWwuaDo2NDoxNDogZXJyb3I6IGltcGxpY2l0
IGRlY2xhcmF0aW9uIG9mIGZ1bmN0aW9uIOKAmHBhZ2VfdG9fc2VjdGlvbuKAmTsgZGlkIHlvdSBt
ZWFuIOKAmHByZXNlbnRfc2VjdGlvbuKAmT8gWy1XZXJyb3I9aW1wbGljaXQtZnVuY3Rpb24tZGVj
bGFyYXRpb25dCiAgaW50IF9fc2VjID0gcGFnZV90b19zZWN0aW9uKF9fcGcpOyAgIFwKICAgICAg
ICAgICAgICBefn5+fn5+fn5+fn5+fn4KCkZpeGVkIGJ5IGNoYW5naW5nIG1rX3B0ZSgpIGZyb20g
aW5saW5lIGZ1bmN0aW9uIHRvIG1hY3JvLgoKQ2M6IExvZ2FuIEd1bnRob3JwZSA8bG9nYW5nQGRl
bHRhdGVlLmNvbT4KRml4ZXM6IGQ5NWYxYTU0MmMzZCAoIlJJU0MtVjogSW1wbGVtZW50IHNwYXJz
ZW1lbSIpClNpZ25lZC1vZmYtYnk6IEtlZmVuZyBXYW5nIDx3YW5na2VmZW5nLndhbmdAaHVhd2Vp
LmNvbT4KLS0tCiBhcmNoL3Jpc2N2L2luY2x1ZGUvYXNtL3BndGFibGUuaCB8IDUgKy0tLS0KIDEg
ZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKSwgNCBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQg
YS9hcmNoL3Jpc2N2L2luY2x1ZGUvYXNtL3BndGFibGUuaCBiL2FyY2gvcmlzY3YvaW5jbHVkZS9h
c20vcGd0YWJsZS5oCmluZGV4IDQyMjkyZDk5Y2M3NC4uMWRiMjE0NGY5MjIxIDEwMDY0NAotLS0g
YS9hcmNoL3Jpc2N2L2luY2x1ZGUvYXNtL3BndGFibGUuaAorKysgYi9hcmNoL3Jpc2N2L2luY2x1
ZGUvYXNtL3BndGFibGUuaApAQCAtMTg0LDEwICsxODQsNyBAQCBzdGF0aWMgaW5saW5lIHB0ZV90
IHBmbl9wdGUodW5zaWduZWQgbG9uZyBwZm4sIHBncHJvdF90IHByb3QpCiAJcmV0dXJuIF9fcHRl
KChwZm4gPDwgX1BBR0VfUEZOX1NISUZUKSB8IHBncHJvdF92YWwocHJvdCkpOwogfQogCi1zdGF0
aWMgaW5saW5lIHB0ZV90IG1rX3B0ZShzdHJ1Y3QgcGFnZSAqcGFnZSwgcGdwcm90X3QgcHJvdCkK
LXsKLQlyZXR1cm4gcGZuX3B0ZShwYWdlX3RvX3BmbihwYWdlKSwgcHJvdCk7Ci19CisjZGVmaW5l
IG1rX3B0ZShwYWdlLHByb3QpICAgICAgIHBmbl9wdGUocGFnZV90b19wZm4ocGFnZSkscHJvdCkK
IAogI2RlZmluZSBwdGVfaW5kZXgoYWRkcikgKCgoYWRkcikgPj4gUEFHRV9TSElGVCkgJiAoUFRS
U19QRVJfUFRFIC0gMSkpCiAKLS0gCjIuMjAuMQoKCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCmxpbnV4LXJpc2N2IG1haWxpbmcgbGlzdApsaW51eC1yaXNj
dkBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4v
bGlzdGluZm8vbGludXgtcmlzY3YK
