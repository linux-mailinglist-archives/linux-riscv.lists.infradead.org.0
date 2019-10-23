Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B69E2E1FFD
	for <lists+linux-riscv@lfdr.de>; Wed, 23 Oct 2019 17:57:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=e7BpeBFjMW7JYzdRJCupniM/f2hsJNNnRZb3TaHPwyE=; b=IMKvcTt5HYMDqn
	JMWA+2+PqIU9TNT/998Xjp+LC0U32twixAf92IGLjO/1LyRnxw4Jgx8FU5c8HXeGMgKO0sxnb4KfD
	r3HQLWr/Uo8DItFR7lr+AL3v0s2mzrw8zJTDOysaSqNcm1ZRp9iTBUjIRsxQYaBom4yW2eE7G5vRB
	JPegQPaRfto2hDeVxj+r7D8/KB7hSl6d5lGLYz99Scm2a8vwLWH3HoNmfWka9vPPx4q6pwjtl3Obx
	6N/dKZZ+0VwyFOnncq9AleKyHfJquRivLQiMAupXRORQBG1vbECAp7SmxHhreSFGl4ub+IggmYPRl
	cvbtWBCFTutYKiRwI5Nw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNJ0J-0007nk-RM; Wed, 23 Oct 2019 15:56:55 +0000
Received: from ale.deltatee.com ([207.54.116.67])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNJ0F-0007mX-MQ
 for linux-riscv@lists.infradead.org; Wed, 23 Oct 2019 15:56:53 +0000
Received: from s0106ac1f6bb1ecac.cg.shawcable.net ([70.73.163.230]
 helo=[192.168.11.155])
 by ale.deltatee.com with esmtpsa (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
 (Exim 4.89) (envelope-from <logang@deltatee.com>)
 id 1iNJ0C-0005gH-NA; Wed, 23 Oct 2019 09:56:49 -0600
To: Kefeng Wang <wangkefeng.wang@huawei.com>,
 Paul Walmsley <paul.walmsley@sifive.com>
References: <20191023032302.160388-1-wangkefeng.wang@huawei.com>
From: Logan Gunthorpe <logang@deltatee.com>
Message-ID: <54385600-0cd9-6113-ed16-41df15fc8fe0@deltatee.com>
Date: Wed, 23 Oct 2019 09:56:46 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191023032302.160388-1-wangkefeng.wang@huawei.com>
Content-Language: en-US
X-SA-Exim-Connect-IP: 70.73.163.230
X-SA-Exim-Rcpt-To: aou@eecs.berkeley.edu, palmer@sifive.com,
 linux-riscv@lists.infradead.org, paul.walmsley@sifive.com,
 wangkefeng.wang@huawei.com
X-SA-Exim-Mail-From: logang@deltatee.com
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on ale.deltatee.com
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=ALL_TRUSTED,BAYES_00
 autolearn=ham autolearn_force=no version=3.4.2
Subject: Re: [PATCH 1/2] riscv: Fix implicit declaration of 'page_to_section'
X-SA-Exim-Version: 4.2.1 (built Tue, 02 Aug 2016 21:08:31 +0000)
X-SA-Exim-Scanned: Yes (on ale.deltatee.com)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191023_085651_776580_C66F0A04 
X-CRM114-Status: GOOD (  13.47  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [207.54.116.67 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
 Albert Ou <aou@eecs.berkeley.edu>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

CgpPbiAyMDE5LTEwLTIyIDk6MjMgcC5tLiwgS2VmZW5nIFdhbmcgd3JvdGU6Cj4gV2l0aCBDT05G
SUdfU1BBUlNFTUVNIGFuZCAhQ09ORklHX1NQQVJTRU1FTV9WTUVNTUFQLAo+IAo+IGFyY2gvcmlz
Y3YvaW5jbHVkZS9hc20vcGd0YWJsZS5oOiBJbiBmdW5jdGlvbiDigJhta19wdGXigJk6Cj4gaW5j
bHVkZS9hc20tZ2VuZXJpYy9tZW1vcnlfbW9kZWwuaDo2NDoxNDogZXJyb3I6IGltcGxpY2l0IGRl
Y2xhcmF0aW9uIG9mIGZ1bmN0aW9uIOKAmHBhZ2VfdG9fc2VjdGlvbuKAmTsgZGlkIHlvdSBtZWFu
IOKAmHByZXNlbnRfc2VjdGlvbuKAmT8gWy1XZXJyb3I9aW1wbGljaXQtZnVuY3Rpb24tZGVjbGFy
YXRpb25dCj4gICBpbnQgX19zZWMgPSBwYWdlX3RvX3NlY3Rpb24oX19wZyk7ICAgXAo+ICAgICAg
ICAgICAgICAgXn5+fn5+fn5+fn5+fn5+Cj4gCj4gRml4ZWQgYnkgY2hhbmdpbmcgbWtfcHRlKCkg
ZnJvbSBpbmxpbmUgZnVuY3Rpb24gdG8gbWFjcm8uCj4gCj4gQ2M6IExvZ2FuIEd1bnRob3JwZSA8
bG9nYW5nQGRlbHRhdGVlLmNvbT4KPiBGaXhlczogZDk1ZjFhNTQyYzNkICgiUklTQy1WOiBJbXBs
ZW1lbnQgc3BhcnNlbWVtIikKPiBTaWduZWQtb2ZmLWJ5OiBLZWZlbmcgV2FuZyA8d2FuZ2tlZmVu
Zy53YW5nQGh1YXdlaS5jb20+CgpNYWtlcyBzZW5zZS4KClJldmlld2VkLWJ5OiBMb2dhbiBHdW50
aG9ycGUgPGxvZ2FuZ0BkZWx0YXRlZS5jb20+Cgo+IC0tLQo+ICBhcmNoL3Jpc2N2L2luY2x1ZGUv
YXNtL3BndGFibGUuaCB8IDUgKy0tLS0KPiAgMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCsp
LCA0IGRlbGV0aW9ucygtKQo+IAo+IGRpZmYgLS1naXQgYS9hcmNoL3Jpc2N2L2luY2x1ZGUvYXNt
L3BndGFibGUuaCBiL2FyY2gvcmlzY3YvaW5jbHVkZS9hc20vcGd0YWJsZS5oCj4gaW5kZXggNDIy
OTJkOTljYzc0Li4xZGIyMTQ0ZjkyMjEgMTAwNjQ0Cj4gLS0tIGEvYXJjaC9yaXNjdi9pbmNsdWRl
L2FzbS9wZ3RhYmxlLmgKPiArKysgYi9hcmNoL3Jpc2N2L2luY2x1ZGUvYXNtL3BndGFibGUuaAo+
IEBAIC0xODQsMTAgKzE4NCw3IEBAIHN0YXRpYyBpbmxpbmUgcHRlX3QgcGZuX3B0ZSh1bnNpZ25l
ZCBsb25nIHBmbiwgcGdwcm90X3QgcHJvdCkKPiAgCXJldHVybiBfX3B0ZSgocGZuIDw8IF9QQUdF
X1BGTl9TSElGVCkgfCBwZ3Byb3RfdmFsKHByb3QpKTsKPiAgfQo+ICAKPiAtc3RhdGljIGlubGlu
ZSBwdGVfdCBta19wdGUoc3RydWN0IHBhZ2UgKnBhZ2UsIHBncHJvdF90IHByb3QpCj4gLXsKPiAt
CXJldHVybiBwZm5fcHRlKHBhZ2VfdG9fcGZuKHBhZ2UpLCBwcm90KTsKPiAtfQo+ICsjZGVmaW5l
IG1rX3B0ZShwYWdlLHByb3QpICAgICAgIHBmbl9wdGUocGFnZV90b19wZm4ocGFnZSkscHJvdCkK
PiAgCj4gICNkZWZpbmUgcHRlX2luZGV4KGFkZHIpICgoKGFkZHIpID4+IFBBR0VfU0hJRlQpICYg
KFBUUlNfUEVSX1BURSAtIDEpKQo+ICAKPiAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCmxpbnV4LXJpc2N2IG1haWxpbmcgbGlzdApsaW51eC1yaXNjdkBs
aXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlz
dGluZm8vbGludXgtcmlzY3YK
