Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D217487E65
	for <lists+linux-riscv@lfdr.de>; Fri,  9 Aug 2019 17:47:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4t0zVdZ2nsoy/VHbNC/gFfrGmPlmwL92dnP9pOIiPQE=; b=P2bDBHjmivjpKd
	OfdX9sYwXpFU/gDvng6VFtuj/zPQV1o0iQyPSnpDPRlx7DJ2NPGHebw6hEVdpm6/GaYjEZE417wtz
	vCL1iMeVnrN1qDdIypllkLsFYjcUcJCUYmf6OVNRLixUD9udAmt/FT9EBwEpG5NGK3GhfTV4VOL1Y
	E76StkFEIW6jiwA55FQDcuK2mQgPS7yLNEHs3wQ4fy6yFCxrOYOKpTenqVsw+r8TYrJf7DyOzKR4z
	ZiFnDEKT/3CT+RJi52PQZm/YZs6PWuXU9aVH0SuxFdMe8Cpps3mfEgXHGSqvG/fSRTpjWR1ZNCbuP
	aYWcG1RFDTGpsi8aUlDw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hw76Z-00077N-S2; Fri, 09 Aug 2019 15:46:59 +0000
Received: from ale.deltatee.com ([207.54.116.67])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hw76W-000772-5L
 for linux-riscv@lists.infradead.org; Fri, 09 Aug 2019 15:46:57 +0000
Received: from guinness.priv.deltatee.com ([172.16.1.162])
 by ale.deltatee.com with esmtp (Exim 4.89)
 (envelope-from <logang@deltatee.com>)
 id 1hw76S-0000Nl-DT; Fri, 09 Aug 2019 09:46:53 -0600
To: Greentime Hu <green.hu@gmail.com>
References: <20190109203911.7887-1-logang@deltatee.com>
 <20190109203911.7887-3-logang@deltatee.com>
 <CAEbi=3d0RNVKbDUwRL-o70O12XBV7q6n_UT-pLqFoh9omYJZKQ@mail.gmail.com>
 <c4298fdd-6fd6-fa7f-73f7-5ff016788e49@deltatee.com>
 <CAEbi=3cn4+7zk2DU1iRa45CDwTsJYfkAV8jXHf-S7Jz63eYy-A@mail.gmail.com>
 <CAEbi=3eZcgWevpX9VO9ohgxVDFVprk_t52Xbs3-TdtZ+js3NVA@mail.gmail.com>
From: Logan Gunthorpe <logang@deltatee.com>
Message-ID: <0926a261-520e-4c40-f926-ddd40bb8ce44@deltatee.com>
Date: Fri, 9 Aug 2019 09:46:49 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <CAEbi=3eZcgWevpX9VO9ohgxVDFVprk_t52Xbs3-TdtZ+js3NVA@mail.gmail.com>
Content-Language: en-CA
X-SA-Exim-Connect-IP: 172.16.1.162
X-SA-Exim-Rcpt-To: hch@lst.de, michaeljclark@mac.com,
 linux-riscv@lists.infradead.org, olof@lixom.net, zong@andestech.com,
 sbates@raithlin.com, linux-kernel@vger.kernel.org, palmer@sifive.com,
 andrew@sifive.com, aou@eecs.berkeley.edu, robh@kernel.org,
 paul.walmsley@sifive.com, greentime.hu@sifive.com, green.hu@gmail.com
X-SA-Exim-Mail-From: logang@deltatee.com
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on ale.deltatee.com
X-Spam-Level: 
X-Spam-Status: No, score=-8.9 required=5.0 tests=ALL_TRUSTED,BAYES_00,
 GREYLIST_ISWHITE autolearn=ham autolearn_force=no version=3.4.2
Subject: Re: [PATCH v4 2/2] RISC-V: Implement sparsemem
X-SA-Exim-Version: 4.2.1 (built Tue, 02 Aug 2016 21:08:31 +0000)
X-SA-Exim-Scanned: Yes (on ale.deltatee.com)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190809_084656_565250_47D3F25E 
X-CRM114-Status: GOOD (  10.59  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [207.54.116.67 listed in list.dnswl.org]
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
Cc: Rob Herring <robh@kernel.org>, Albert Ou <aou@eecs.berkeley.edu>,
 Andrew Waterman <andrew@sifive.com>, Palmer Dabbelt <palmer@sifive.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Stephen Bates <sbates@raithlin.com>, Zong Li <zong@andestech.com>,
 paul.walmsley@sifive.com, Olof Johansson <olof@lixom.net>,
 greentime.hu@sifive.com, linux-riscv@lists.infradead.org,
 Michael Clark <michaeljclark@mac.com>, Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

CgpPbiAyMDE5LTA4LTA4IDEwOjIzIHAubS4sIEdyZWVudGltZSBIdSB3cm90ZToKPiBkaWZmIC0t
Z2l0IGEvYXJjaC9yaXNjdi9LY29uZmlnIGIvYXJjaC9yaXNjdi9LY29uZmlnCj4gaW5kZXggM2Yx
MmIwNjlhZjFkLi4yMDhiM2UxNGNjZDggMTAwNjQ0Cj4gLS0tIGEvYXJjaC9yaXNjdi9LY29uZmln
Cj4gKysrIGIvYXJjaC9yaXNjdi9LY29uZmlnCj4gQEAgLTExNiw3ICsxMTYsOCBAQCBjb25maWcg
UEdUQUJMRV9MRVZFTFMKPiDCoCDCoCDCoCDCoCBkZWZhdWx0IDIKPiAKPiDCoGNvbmZpZyBIQVZF
X0FSQ0hfUEZOX1ZBTElECj4gLSDCoCDCoCDCoCBkZWZfYm9vbCB5Cj4gKyDCoCDCoCDCoCBib29s
Cj4gKyDCoCDCoCDCoCBkZWZhdWx0ICFTUEFSU0VNRU1fVk1FTU1BUAo+IAo+IMKgbWVudSAiUGxh
dGZvcm0gdHlwZSIKPiAKPiBkaWZmIC0tZ2l0IGEvYXJjaC9yaXNjdi9pbmNsdWRlL2FzbS9wYWdl
LmggYi9hcmNoL3Jpc2N2L2luY2x1ZGUvYXNtL3BhZ2UuaAo+IGluZGV4IDhkZGI2YzdmZWRhYy4u
Njk5MWY3YTVhNGE3IDEwMDY0NAo+IC0tLSBhL2FyY2gvcmlzY3YvaW5jbHVkZS9hc20vcGFnZS5o
Cj4gKysrIGIvYXJjaC9yaXNjdi9pbmNsdWRlL2FzbS9wYWdlLmgKPiBAQCAtOTMsMTYgKzkzLDIw
IEBAIGV4dGVybiB1bnNpZ25lZCBsb25nIG1pbl9sb3dfcGZuOwo+IMKgI2RlZmluZSB2aXJ0X3Rv
X3Bmbih2YWRkcikgwqAgwqAgKHBoeXNfdG9fcGZuKF9fcGEodmFkZHIpKSkKPiDCoCNkZWZpbmUg
cGZuX3RvX3ZpcnQocGZuKSDCoCDCoCDCoCAoX192YShwZm5fdG9fcGh5cyhwZm4pKSkKPiAKPiAr
I2lmICFkZWZpbmVkKENPTkZJR19TUEFSU0VNRU1fVk1FTU1BUCkKPiArI2RlZmluZSBwZm5fdmFs
aWQocGZuKSBcCj4gKyDCoCDCoCDCoCAoKChwZm4pID49IHBmbl9iYXNlKSAmJiAoKChwZm4pLXBm
bl9iYXNlKSA8IG1heF9tYXBucikpCj4gwqAjZGVmaW5lIHZpcnRfdG9fcGFnZSh2YWRkcikgwqAg
wqAocGZuX3RvX3BhZ2UodmlydF90b19wZm4odmFkZHIpKSkKPiDCoCNkZWZpbmUgcGFnZV90b192
aXJ0KHBhZ2UpIMKgIMKgIChwZm5fdG9fdmlydChwYWdlX3RvX3BmbihwYWdlKSkpCj4gKyNlbHNl
Cj4gKyNkZWZpbmUgdmlydF90b19wYWdlKHZhZGRyKSDCoCDCoCgoc3RydWN0IHBhZ2UgKikoKCgo
dTY0KXZhZGRyIC0KPiB2YV9wYV9vZmZzZXQpIC8gUEFHRV9TSVpFKSAqIHNpemVvZihzdHJ1Y3Qg
cGFnZSkgKyBWTUVNTUFQX1NUQVJUKSkKPiArI2RlZmluZSBwYWdlX3RvX3ZpcnQocGcpIMKgIMKg
IMKgICgodm9pZCAqKSgoKCgodTY0KXBnIC0gVk1FTU1BUF9TVEFSVCkgLwo+IHNpemVvZihzdHJ1
Y3QgcGFnZSkpICogUEFHRV9TSVpFKSArIHZhX3BhX29mZnNldCkpCj4gKyNlbmRpZgoKVGhpcyBk
b2Vzbid0IG1ha2Ugc2Vuc2UgdG8gbWUgYXQgYWxsLiBJdCBzaG91bGQgYWx3YXlzIHVzZSBwZm5f
dG9fcGFnZSgpCmZvciB2aXJ0X3RvX3BhZ2UoKSBhbmQgdGhlIGdlbmVyaWMgcGZuX3RvX3BhZ2Uo
KS9wYWdlX3RvX3BmbigpCmltcGxlbWVudGF0aW9ucyBlc3NlbnRpYWxseSBhbHJlYWR5IGRvIHdo
YXQgeW91IGFyZSBkb2luZyBpbiBhIGNsZWFuZXIKd2F5LiBTbyBJJ2QgYmUgcmVhbGx5IHN1cnBy
aXNlZCBpZiB0aGlzIGRvZXMgYW55dGhpbmcgYXQgYWxsLgoKTG9nYW4KCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LXJpc2N2IG1haWxpbmcgbGlz
dApsaW51eC1yaXNjdkBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQu
b3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcmlzY3YK
